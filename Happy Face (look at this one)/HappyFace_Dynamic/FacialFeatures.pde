void facialFeatures() {
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
}
