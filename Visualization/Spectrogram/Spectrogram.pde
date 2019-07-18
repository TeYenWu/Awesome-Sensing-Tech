import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import processing.serial.*;


/**
 * LiveSpectrogram
 * Takes successive FFTs and renders them onto the screen as grayscale, scrolling left.
 *
 * Dan Ellis dpwe@ee.columbia.edu 2010-01-15
 */
 

FFT fft;

int sampleRate = 10;
int bufferSize = 128;
int colmax = 500;
int rowmax = 256;
float buffer[] = new float[bufferSize];;
int[][] sgram = new int[rowmax][colmax];
int col;
int leftedge;
color c1 = color(0,0,0);
color c2 = color(255,0,255);
color c3 = color(255,255,0);
Serial myPort;  // Create object from Serial class

void setup()
{
  size(512, 256, P3D);
  textMode(SCREEN);
  
  // List all the available serial ports
  printArray(Serial.list());

 // change the number below to match your port:
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 115200);

  fft = new FFT(bufferSize, sampleRate);
  fft.window(FFT.HAMMING);
}
void setGradientStroke(float value, float maxValue){
  color c = color(0,0,0);
  if(value < maxValue/2){
    c = lerpColor(c1, c2, value/(maxValue/2));
  } else {
    c = lerpColor(c2, c3, value/(maxValue/2)-1);
  }
  
  stroke(c);
}

void draw()
{
  
  if ( myPort.available() >= bufferSize) 
  { 
    for(int i = 0; i < bufferSize; i++){
        while(myPort.available()<2);
        buffer[i] = myPort.read()<<8|myPort.read(); 
    }      
  } else {
     for(int i = 0; i < bufferSize; i++){
        buffer[i] = i; 
    }  
  }
  
  background(0);
  stroke(255);
  // perform a forward FFT on the samples in the input buffer
  fft.forward(buffer);

  for(int i = 0; i < rowmax /* fft.specSize() */; i++)
  {
    // fill in the new column of spectral values
    sgram[i][col] = (int)Math.round(Math.max(0,2*20*Math.log10(1000*fft.getBand(i))));
  }
  // next time will be the next column
  col = col + 1; 
  // wrap back to the first column when we get to the end
  if (col == colmax) { col = 0; }
  
  // Draw points.  
  // leftedge is the column in the ring-filled array that is drawn at the extreme left
  // start from there, and draw to the end of the array
  for (int i = 0; i < colmax-leftedge; i++) {
    for (int j = 0; j < rowmax; j++) {
      setGradientStroke(sgram[j][i+leftedge], 255);
      point(i,height-j);
    }
  }
  // Draw the rest of the image as the beginning of the array (up to leftedge)
  for (int i = 0; i < leftedge; i++) {
    for (int j = 0; j < rowmax; j++) {
      setGradientStroke(sgram[j][i], 255);
      point(i+colmax-leftedge,height-j);
    }
  }
  // Next time around, we move the left edge over by one, to have the whole thing
  // scroll left
  leftedge = leftedge + 1; 
  // Make sure it wraps around
  if (leftedge == colmax) { leftedge = 0; }
}
 
 
void stop()
{
 
  super.stop();
}
 
