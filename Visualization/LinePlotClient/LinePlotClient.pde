
import processing.serial.*;
import processing.net.*;
import signal.library.*;
SignalFilter myFilter;
Client myClient; 
int dataIn; 

Serial myPort;        // The serial port
int xPos = 1;         // horizontal position of the graph
float inByte = 0;
float[] values;
int bufferSize = 2400;
float buffer[] = new float[bufferSize];;
float graphRatio = 0.5;
int category = -1;

String[] gestures={"Click","Thumb Check","Thumb Rectangle","Thumb Circle","Rub","Thumb Slide","Push","Pull",
"Circle","Swipe","Tap"};
void setup () {
  // set the window size:
  fullScreen();
  //myFilter = new SignalFilter(this);
  // List all the available serial ports
  // if using Processing 2.1 or later, use Serial.printArray()
  println(Serial.list());
  values = new float[width];
  // I know that the first port in the serial list on my Mac is always my
  // Arduino, so I open Serial.list()[0].
  // Open whatever port is the one you're using.
  myPort = new Serial(this, Serial.list()[7], 500000);

  // don't generate a serialEvent() :
  myPort.bufferUntil(0xFF);
  
  // init socket client
  myClient = new Client(this, "127.0.0.1", 5000);
  
  // set initial background:
  background(0);
}

void draw () {
  background(0);

  if (myClient != null) {
    if (myClient.available() > 0) { 
      String label = myClient.readStringUntil('\n');
      category = Integer.valueOf(label.trim());
      println("resutls:");
      print(label);
      println("index:");
      println(category);
    }
  } else {
    println("server not found");
  }
  //println("index:");
  //  println(category);
  if (category > 0) {
    textSize(108);
    textAlign(CENTER);
    println("results");
    println(category-1);
    //text("word", width/2, height * (1-graphRatio)/2); 
    text(gestures[category-1], width/2, height / 8);
  } else {
    textSize(108);
    textAlign(CENTER);
    text("None", width/2, height / 8);
  }

  // draw the line:
  float graphY = height * (1-graphRatio);
  float graphHeight = height * graphRatio;

  //drawFilledLines(graphY, graphHeight);

  drawLines(graphY, graphHeight);
}

void pushValue(float value) {
  for (int i=0; i<width-1; i++)
    values[i] = values[i+1];
  values[width-1] = value;
}

void drawLines(float graphY, float graphHeight) {

  //int displayWidth = (int) (width / zoom);
  stroke(127, 34, 255);
  strokeWeight(5);
  int k = values.length - width;

  float x0 = 0;
  float y0 = graphY + graphHeight - values[k];
  for (int i=1; i<width; i++) {
    k++;
    float x1 = (int) i ;
    float y1 = graphY + graphHeight - values[k];
    line(x0, y0, x1, y1);
    x0 = x1;
    y0 = y1;
  }
}


void drawFilledLines(float graphY, float graphHeight) {
  stroke(255);
  line(xPos, graphY + graphHeight, xPos, graphY+ graphHeight - inByte);

  // at the edge of the screen, go back to the beginning:
  if (xPos >= width) {
    xPos = 0;
    background(0);
  } else {
    // increment the horizontal position:
    xPos++;
  }
}

void serialEvent (Serial myPort) {
  // get the ASCII string:
  float graphHeight = height * graphRatio;
  //print(flag);
  int highByte = myPort.read();
  int lowByte = myPort.read();
  int flag = myPort.read();
  if (flag ==0xFF) {
    // trim off any whitespace:
    int value = highByte<<8|lowByte;
    // convert to an int and map to the screen height:
    inByte = value;
    inByte = map(inByte, 100, 600, 0, graphHeight);

    pushValue(inByte);

    try {
      if (myClient != null) {
        myClient.write(0xFF);
        myClient.write(highByte);
        myClient.write(lowByte);
        //println("send data to server");
      } else {
        println("server not found");
      }
    } 
    catch(NullPointerException e) {
    }
  }
}
