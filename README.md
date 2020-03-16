# Awesome-Sensing-Tech
With an increasing interest in emerging sensing technology, we created an awesome curated list to understand how recent researchers weave sensing technology into user interfaces. 
Also, we included several background resources and codes to lower the learning barrier for research beginners.
This curation is currently categorized by the general sensing principle.

## Resistive Sensing
Resistive sensing is to detect the resistance change caused by the change in length, area, or material of conductors, usually implemented with a voltage divider or Wheatstone bridge. The common sensors include force sensor, strain gauge, ambient light sensor, resistive touch screen and etc.
* [RESi: A Highly Flexible, Pressure-Sensitive, Imperceptible Textile Interface Based on Resistive Yarns](https://dl.acm.org/citation.cfm?id=3242664)
* [BackHand: Sensing Hand Gestures via Back of the Hand](https://dl.acm.org/citation.cfm?id=2807462)
* [A pressure sensing floor for interactive media applications](https://dl.acm.org/citation.cfm?id=1178526)

## Capacitive Sensing
Capacitive sensing basically detects the charge change stored in two conductors, which could be triggered by the change of electrical field, the approach of a new conductor (e.g. human body), the variance in dielectrics among the conductors, or the distance change between the conductors. Its implementation is usually with a RC circuit or a LC tank. It can be used to sense the hand gestures, proximity, pressure, position, force, humidity, and fluid level. 
### BACKGROUND:
* [AN0040](https://www.silabs.com/documents/public/application-notes/AN0040.pdf)
* [FDC2214](http://www.ti.com/lit/ds/symlink/fdc2214.pdf)
* [Shielding](http://www.ti.com/lit/an/snoa926a/snoa926a.pdf)
* [Finding Common Ground](https://dl.acm.org/citation.cfm?id=3025808)
* [Capacitive Sensor:Deplacement, Humidity, Force](https://www.researchgate.net/profile/Halit_Eren/publication/309291064_Capacitive_Sensors_Displacement_Humidity_and_Force/links/580866d908ae5ed04bfe84d8/Capacitive-Sensors-Displacement-Humidity-and-Force.pdf) 

### Paper:
* [Wall ++](https://dl.acm.org/citation.cfm?id=3173847)
* [Touché: enhancing touch interaction on humans, screens, liquids, and everyday objects](https://dl.acm.org/citation.cfm?id=2207743)
* [Designing Groundless Body Channel Communication Systems](https://dl.acm.org/citation.cfm?id=3242622)
* [DiamondTouch: a multi-user touch technology](https://dl.acm.org/citation.cfm?id=502389)
* [CapSoles: who is walking on what kind of floor?](https://dl.acm.org/citation.cfm?id=3098279.3098545)
* [PocketTouch: Through-Fabric Capacitive Touch Input](https://dl.acm.org/doi/abs/10.1145/2047196.2047235)
* [Project Zanzibar: A Portable and Flexible Tangible Interaction Platform](https://dl.acm.org/doi/abs/10.1145/3173574.3174089)
* [GhostID: Enabling Non-Persistent User Differentiation in Frequency-Division Capacitive Multi-Touch Sensors](https://dl.acm.org/doi/10.1145/3025453.3025719)
* [High rate, low-latency multi-touch sensing with simultaneous orthogonal multiplexing](https://dl.acm.org/doi/10.1145/2642918.2647353)
* [Gait analysis for fall prediction using hierarchical textile-based capacitive sensor arrays](https://dl.acm.org/doi/10.1145/2954003)
* [FlexTouch: Enabling Large-Scale Interaction Sensing Beyond Touchscreens Using Flexible and Conductive Materials](https://dl.acm.org/doi/10.1145/3351267)
* [Deformation Capture via Self-Sensing Capacitive Arrays](https://dl.acm.org/doi/10.1145/3311972)
* [Capacitive near-field communication for ubiquitous interaction and perception](https://dl.acm.org/doi/10.1145/2632048.2632053)
* [Bodyprint: Biometric User Identification on Mobile Devices Using the Capacitive Touchscreen to Scan Body Parts](https://dl.acm.org/doi/10.1145/2702123.2702518)

## Inductive Sensing
Inductive sensing is based on the principle of magnetic induction to detect nearby metallic objects. It is usually implemented by a coil, which acts as an inductor to generate a high frequency magnetic field. If there is a metal object near the changing magnetic field, current will flow in the object an form a new magnetic field that opposes the original magnetic field. The net effect would cause the change in the inductance of the coil, resulting in the change of the resonant frequnecy in the LC tank. The technology enables precise measurement of linear and angular position, displacement, motion, compression, vibration, and metal composition.
### BACKGROUND:
* [LDC1614](http://www.ti.com/product/LDC1614)
* [Coil Design](http://www.ti.com/lit/an/snoa930a/snoa930a.pdf)

### Paper:
* [Indutivo](https://dl.acm.org/citation.cfm?id=3242662)
* [Recognizing Handheld Electrical Device](http://www-nishio.ist.osaka-u.ac.jp/~maekawa/paper/maekawa-pervasive2012-coil.pdf)
* [Tessutivo: Contextual Interactions on Interactive Fabrics with Inductive Sensing](https://dl.acm.org/citation.cfm?id=3347897)

## Impedance Sensing
Impedance is the measure of the opposition that a circuit presents to a current when a voltage is applied. Impedance sensing is based on the fact that a grounded object, such as human body, will shunt some current to ground when it encounters an electric field through capacitive coupling. It is usually implemented by adding a relatively small AC current between a pair of electrodes, creating an electric field in the conductive medium. When a grounded object influenced the electric field, the impedance between the pair of electrode will change accordingly.

* [EnhancedTouchX](https://dl.acm.org/citation.cfm?id=3300551)
* [Electrick: Low-Cost Touch Sensing Using Electric Field Tomography](https://dl.acm.org/citation.cfm?id=3025842)
* [Tomo: Wearable, Low-cost, Electrical Impedance Tomography for Hand Gesture Recognition](https://dl.acm.org/citation.cfm?id=2807480)
* [Advancing Hand Gesture Recognition with High Resolution Electrical Impedance Tomography](https://dl.acm.org/citation.cfm?id=2984574)
* [Pulp Nonfiction: Low-Cost Touch Tracking for Paper](https://dl.acm.org/citation.cfm?doid=3173574.3173691)
* [Zensei: Embedded, Multi-electrode Bioimpedance Sensing for Implicit, Ubiquitous User Recognition](https://dl.acm.org/doi/10.1145/3025453.3025536)

## Acoustic
* [ViBand](https://dl.acm.org/citation.cfm?id=2984582)
* [Hand Activity](https://dl.acm.org/citation.cfm?id=3300568)
* [Instrumenting and Analyzing Fabrication Activities, Users, and Expertise](https://dl.acm.org/citation.cfm?id=3290605.3300554)
* [Activity Recognition of Assembly Tasks Using Body-Worn Microphones and Accelerometers](https://ieeexplore.ieee.org/document/1677514)
* [Interferi: Gesture Sensing using On-Body Acoustic Interferometry](https://dl.acm.org/citation.cfm?id=3300506f)
* [The Magic Carpet: Physical Sensing for Immersive Environments](https://dl.acm.org/citation.cfm?id=1120391)
* [Sensing foot gestures from the pocket](https://dl.acm.org/citation.cfm?id=1866063)
* [FingerPing: Recognizing Fine-grained Hand Poses using Active Acoustic On-body Sensing](https://dl.acm.org/citation.cfm?doid=3173574.3174011)
* [The sound of one hand: a wrist-mounted bio-acoustic fingertip gesture interface](https://dl.acm.org/citation.cfm?id=506566)
* [SoundTrak: Continuous 3D Tracking of a Finger Using Active Acoustics](https://dl.acm.org/citation.cfm?id=3090095)
* [Touch & Activate: Adding interactivity to existing objects using active acoustic sensing](https://dl.acm.org/citation.cfm?id=2501989) 
* [Scratch input: creating large, inexpensive, unpowered and mobile finger input surfaces](https://dl.acm.org/citation.cfm?id=1449747)
* [Exploring Design Factors for Transforming Passive Vibration Signals into Smartwear Interactions](https://dl.acm.org/doi/10.1145/2971485.2971558)
* [VibEye: Vibration-Mediated Object Recognition for Tangible Interactive Applications](https://dl.acm.org/doi/10.1145/3290605.3300906)

## Radio Wave (frequency below 30G Hz)
* [Hantenna](https://ieeexplore.ieee.org/document/8334026)
* [EM-Sense](https://www.gierad.com/assets/emsense/emsense.pdf)
* [Wall ++](https://dl.acm.org/citation.cfm?id=3173847)
* [EM-Comm](https://dl.acm.org/citation.cfm?id=3130984)
* [MagnifiSense](https://dl.acm.org/citation.cfm?id=2804271)
* [Humantenna ](https://dl.acm.org/citation.cfm?id=2207676.2208330)
* [Below the Surface: Unobtrusive Activity Recognition for Work Surfaces using RF-radar sensing](https://dl.acm.org/citation.cfm?id=3172962)
* [Activity recognition with hand-worn magnetic sensors](https://link.springer.com/article/10.1007/s00779-012-0556-8)
* [A Shoe-Embedded RF Sensor for Motion Detection](https://ieeexplore.ieee.org/abstract/document/5711000)
* [TagScan: Simultaneous Target Imaging and Material Identification with Commodity RFID Devices](https://dl.acm.org/citation.cfm?id=3117830)
* [Short-Range Radar Based Real-Time Hand Gesture Recognition Using LSTM Encoder](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8662554)
* [MATERIAL IDENTIFICATION USING RF SENSORS AND CONVOLUTIONAL NEURAL NETWORKS](https://ieeexplore.ieee.org/abstract/document/8682296)
* [LiquID: A Wireless Liquid IDentifier](https://dl.acm.org/citation.cfm?id=3210345)

## MmWave (frequency between 30G Hz and 300G HZ)
### BACKGROUND
* [Human Body and Millimeter-Wave]( https://arxiv.org/pdf/1503.05944.pdf)
* [TI Resource](http://dev.ti.com/tirex/explore/node?node=AJ3V.naK7FG5g7n7bxAw5A__VLyFKFf__LATEST)

### PAPER
* [Soli](https://dl.acm.org/citation.cfm?id=2925953)
* [Interacting with Soli: Exploring Fine-Grained Dynamic Gesture Recognition in the Radio-Frequency Spectrum](https://dl.acm.org/citation.cfm?id=2984565)
* [RadarCat](https://dl.acm.org/citation.cfm?id=2984515)
* [Exploring Tangible Interactions with Radar Sensing](https://dl.acm.org/citation.cfm?id=3287078)
* [DeskWave: Desktop Interactions using Low-cost Microwave Doppler Arrays](https://dl.acm.org/citation.cfm?doid=3027063.3053152)
* [mTrack: High-Precision Passive Tracking Using Millimeter Wave Radios](https://dl.acm.org/citation.cfm?id=2790113)
* [The Missing Interface: Micro-Gestures on Augmented Objects](https://dl.acm.org/citation.cfm?id=3312986)
* [Reusing 60GHz Radios for Mobile Radar Imaging](https://sites.cs.ucsb.edu/~ravenben/publications/pdf/60gradar-mobicom15.pdf)
## Optic
* [Vibrosight: Long-Range Vibrometry for Smart Environment Sensing](https://dl.acm.org/citation.cfm?id=3242608)

## Sensor Fusion
* [Sozu: Self-Powered Radio Tags for Building-Scale Activity Sensing](https://dl.acm.org/citation.cfm?id=3347952)
* [Phoneprioception: enabling mobile phones to infer where they are kept](https://dl.acm.org/doi/10.1145/2470654.2481296)
