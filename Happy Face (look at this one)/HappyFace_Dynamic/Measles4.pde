void measles4() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles4X = random(faceSquareX+height*4/5, faceSquareX+faceSquareSide-height*1/20);
  measles4Y = random(faceSquareY+height*27/75, faceSquareY+faceSquareSide-height*27/75);
  measles4X2 = random(faceSquareX+height*1/20, faceSquareX+faceSquareSide-height*4/5);
  measles4Y2 = random(faceSquareY+height*27/75, faceSquareY+faceSquareSide-height*27/75);
  //
  fill(measlesColor);
  ellipse(measles4X, measles4Y, measlesDiameter, measlesDiameter);
  ellipse(measles4X2, measles4Y2, measlesDiameter, measlesDiameter);
  fill(white);
}
