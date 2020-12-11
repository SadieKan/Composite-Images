//Global Variables
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter, eye2Diameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #F01313, white = #FFFFFF, blue = #63B5EA, black = #000000;
color measlesColor = red; 
float measlesDiameter, measlesX, measlesY, measlesX2, measlesY2, measles2X, measles2Y, measles2X2, measles2Y2;
float measles3X, measles3Y, measles3X2, measles3Y2, measles4X, measles4Y, measles4X2, measles4Y2, measles5X, measles5Y;
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
int titleX, titleY, titleWidth, titleHeight;
String title = "Measles";
PFont titleFont;
//
void setup() {
  fullScreen(); 
  //displayWidth & displayHeight //General Geometry: landscape, potrait, or square
  populatingVariables();
  title();
  faceShape();
}//End setup
//
void draw() {
  measles();
  measles2();
  measles3();
  measles4();
  measles5();
  facialFeatures();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
