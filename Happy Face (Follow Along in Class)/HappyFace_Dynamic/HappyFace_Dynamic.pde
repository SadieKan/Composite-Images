//Global Variables
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #F01313, white = #FFFFFF;
color measlesColor = red; 
float measlesX, measlesY, measlesDiameter;

void setup() {
  fullScreen(); 
  //displayWidth & displayHeight //General Geometry: landscape, potrait, or square
  //
  //Variable Population
  populatingVariables();
  //
  //Initial Visual Data, etc. (i.e. Face)
  rect(faceSquareX, faceSquareY, faceSquareSide, faceSquareSide);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End setup
void draw() {
  measlesX = random(width*1/2-height*7/15, width*1/2+height*7/15);
  measlesY = random(height);
  measlesDiameter = random(height*1/30, height*1/15);
  //
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(white);
  //
  //Left Eye
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //Right Eye
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //Nose
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  //Mouth
  //strokeCap; //Default ROUND
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(1.5);
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {
}//End mousePressed
