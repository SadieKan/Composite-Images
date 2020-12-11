//Global Variables
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #F01313, white = #FFFFFF;
color measlesColor = red; 
float measlesX, measlesY, measlesX2, measlesY2, measles2X, measles2Y, measles2X2, measles2Y2;
float measles3X, measles3Y, measles3X2, measles3Y2, measles4X, measles4Y, measles4X2, measles4Y2, measlesDiameter;
//
void setup() {
  fullScreen(); 
  //displayWidth & displayHeight //General Geometry: landscape, potrait, or square
  populatingVariables();
  faceShape();
}//End setup
//
void draw() {
  measles();
  measles2();
  measles3();
  measles4();
  facialFeatures();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
