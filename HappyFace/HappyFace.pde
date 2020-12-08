//Global Variables
float shortSide;
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
//
//Display Geometry
fullScreen(); //displayWidth & displayHeight //General Geometry: landscape, potrait, or square
//if (width > height) shortSide = height; //Shorter Side
//println(shortSide);
//
//Populating Variables
faceSquareX = width*1/2-height*1/2;
faceSquareY = height*0;
faceSquareSide = height; //Shorter side
faceX = width/2;
faceY = height/2;
faceDiameter = height; //Variable shortSide
leftEyeX = width*2/5;
leftEyeY = height*2/5;
rightEyeX = width*3/5;
rightEyeY = leftEyeY;
eyeDiameter = height/7;
noseX1 = width/2;
noseY1 = height*1/2-height*1/15;
noseX2 = width*9/20;
noseY2 = height*6/10;
noseX3 = width*11/20;
noseY3 = noseY2;
mouthX1 = leftEyeX;
mouthY1 = height*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
mouthThick = 25;
//
//the Face
rect(faceSquareX, faceSquareY, faceSquareSide, faceSquareSide);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
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
//
//The Measles
//ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
//
