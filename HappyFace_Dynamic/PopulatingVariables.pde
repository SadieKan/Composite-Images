void populatingVariables() {
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
  //
  noseX1 = width/2;
  noseY1 = height*1/2-height*1/15;
  noseX2 = width*9/20;
  noseY2 = height*6/10;
  noseX3 = width*11/20;
  noseY3 = noseY2;
  //
  mouthX1 = leftEyeX;
  mouthY1 = height*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthThick = 25;
} //End populatingVariables()
