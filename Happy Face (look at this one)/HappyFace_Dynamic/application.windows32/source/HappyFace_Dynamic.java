import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class HappyFace_Dynamic extends PApplet {

//Global Variables
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter, eye2Diameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
int red = 0xffF01313, white = 0xffFFFFFF, blue = 0xff63B5EA, black = 0xff000000;
int measlesColor = red; 
float measlesDiameter, measlesBoxX, measlesBoxY, measlesX, measlesY, measlesX2, measlesY2, measles2X, measles2Y, measles2X2, measles2Y2;
float measles3X, measles3Y, measles3X2, measles3Y2, measles4X, measles4Y, measles4X2, measles4Y2, measles5X, measles5Y;
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
int titleX, titleY, titleWidth, titleHeight;
String title = "Measles";
PFont titleFont;
//
public void setup() {
   
  //displayWidth & displayHeight //General Geometry: landscape, potrait, or square
  populatingVariables();
  title();
  faceShape();
}//End setup
//
public void draw() {
  //measlesBox(); //code to spawn measles inside the square
  measles();
  measles2();
  measles3();
  measles4();
  measles5();
  facialFeatures();
}//End draw
//
public void keyPressed() {
}//End keyPressed
//
public void mousePressed() {
}//End mousePressed
public void faceShape() {
  rect(faceSquareX, faceSquareY, faceSquareSide, faceSquareSide);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}
public void facialFeatures() {
  //Left Eye
  fill(blue);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  fill(white);
  fill(black);
  ellipse(leftEyeX, leftEyeY, eye2Diameter, eye2Diameter);
  fill(white);
  //
  //Right Eye
  fill(blue);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(white);
  fill(black);
  ellipse(rightEyeX, rightEyeY, eye2Diameter, eye2Diameter);
  fill(white);
  //
  //Nose
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  //
  //Mouth
  image(pic, imageX, imageY, imageWidth, imageHeight);
  //strokeCap; //Default ROUND
  /*
  strokeWeight(mouthThick);
   line(mouthX1, mouthY1, mouthX2, mouthY2);
   strokeWeight(1.5);
   */
}
public void measles() {
  measlesDiameter = random(height*1/30, height*1/15);
  measlesX = random(faceSquareX+height*16/75, faceSquareX+faceSquareSide-height*16/75);
  measlesY = random(faceSquareY+height*9/75, faceSquareY+faceSquareSide-height*9/75);
  measlesX2 = random(faceSquareX+height*9/75, faceSquareX+faceSquareSide-height*9/75);
  measlesY2 = random(faceSquareY+height*16/75, faceSquareY+faceSquareSide-height*16/75);
  //
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  ellipse(measlesX2, measlesY2, measlesDiameter, measlesDiameter);
}
public void measles2() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles2X = random(faceSquareX+height*21/75, faceSquareX+faceSquareSide-height*21/75);
  measles2Y = random(faceSquareY+height*2/25, faceSquareY+faceSquareSide-height*2/25);
  measles2X2 = random(faceSquareX+height*2/25, faceSquareX+faceSquareSide-height*2/25);
  measles2Y2 = random(faceSquareY+height*21/75, faceSquareY+faceSquareSide-height*21/75);
  //
  fill(measlesColor);
  ellipse(measles2X, measles2Y, measlesDiameter, measlesDiameter);
  ellipse(measles2X2, measles2Y2, measlesDiameter, measlesDiameter);
}
public void measles3() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles3X = random(faceSquareX+height*27/75, faceSquareX+faceSquareSide-height*27/75);
  measles3Y = random(faceSquareY+height*4/5, faceSquareY+faceSquareSide-height*1/20);
  measles3X2 = random(faceSquareX+height*27/75, faceSquareX+faceSquareSide-height*27/75);
  measles3Y2 = random(faceSquareY+height*1/20, faceSquareY+faceSquareSide-height*4/5);
  //
  fill(measlesColor);
  ellipse(measles3X, measles3Y, measlesDiameter, measlesDiameter);
  ellipse(measles3X2, measles3Y2, measlesDiameter, measlesDiameter);
}
public void measles4() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles4X = random(faceSquareX+height*4/5, faceSquareX+faceSquareSide-height*1/20);
  measles4Y = random(faceSquareY+height*27/75, faceSquareY+faceSquareSide-height*27/75);
  measles4X2 = random(faceSquareX+height*1/20, faceSquareX+faceSquareSide-height*4/5);
  measles4Y2 = random(faceSquareY+height*27/75, faceSquareY+faceSquareSide-height*27/75);
  //
  fill(measlesColor);
  ellipse(measles4X, measles4Y, measlesDiameter, measlesDiameter);
  ellipse(measles4X2, measles4Y2, measlesDiameter, measlesDiameter);
}
public void measles5() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles5X = random(faceSquareX+height*12/75, faceSquareX+faceSquareSide-height*12/75);
  measles5Y = random(faceSquareY+height*12/75, faceSquareY+faceSquareSide-height*12/75);  
  //
  fill(measlesColor);
  ellipse(measles5X, measles5Y, measlesDiameter, measlesDiameter);
  fill(white);
}
public void measlesBox() {
  measlesDiameter = random(height*1/30, height*1/15);
  measlesBoxX = random(faceSquareX+measlesDiameter/2, faceSquareX+faceSquareSide-measlesDiameter/2);
  measlesBoxY = random(faceSquareY+measlesDiameter/2, faceSquareY+faceSquareSide-measlesDiameter/2);
  //
  fill(measlesColor);
  ellipse(measlesBoxX, measlesBoxY, measlesDiameter, measlesDiameter);
  fill(white);
}
public void populatingVariables() {
  titleX = width*1/40;
  titleY = height*1/10;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  //
  faceSquareX = width*1/2-height*1/2;
  faceSquareY = height*0;
  faceSquareSide = height;
  //
  faceX = width/2;
  faceY = height/2;
  faceDiameter = height; 
  //
  leftEyeX = width*2/5;
  leftEyeY = height*2/5;
  rightEyeX = width*3/5;
  rightEyeY = leftEyeY;
  eyeDiameter = height/7;
  eye2Diameter = height/12;
  //
  noseX1 = width/2;
  noseY1 = height*1/2-height*1/15;
  noseX2 = width*9/20;
  noseY2 = height*6/10;
  noseX3 = width*11/20;
  noseY3 = noseY2;
  //
  pic = loadImage ("mouth.PNG"); //Dimensions: 3001 Width, 2068 Height
  float imageWidthRatio = 3001.0f/3001.0f; 
  float imageHeightRatio = 2068.0f/3001.0f;
  imageX = width*10/30;
  imageY = height*3/5;
  imageWidth = (width*imageWidthRatio)/3;
  imageHeight = (height*imageHeightRatio)/3;
  /*
  mouthX1 = leftEyeX;
   mouthY1 = height*3/4;
   mouthX2 = rightEyeX;
   mouthY2 = mouthY1;
   mouthThick = 25;
   */
} //End populatingVariables()
public void title() {
  titleFont = createFont ("Cambria", 55);
  fill(black);
  textFont(titleFont, 70);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(white);
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "HappyFace_Dynamic" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
