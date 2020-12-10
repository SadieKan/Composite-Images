void measles4() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles4X = random(faceSquareX+height*5/75, faceSquareX+faceSquareSide-height*5/75);
  measles4Y = random(faceSquareY+height*21/75, faceSquareY+faceSquareSide-height*21/75);
  //
  fill(measlesColor);
  ellipse(measles4X, measles4Y, measlesDiameter, measlesDiameter);
  fill(white);
}
