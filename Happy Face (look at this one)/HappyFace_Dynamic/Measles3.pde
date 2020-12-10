void measles3() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles3X = random(faceSquareX+height*21/75, faceSquareX+faceSquareSide-height*21/75);
  measles3Y = random(faceSquareY+height*5/75, faceSquareY+faceSquareSide-height*5/75);
  //
  fill(measlesColor);
  ellipse(measles3X, measles3Y, measlesDiameter, measlesDiameter);
  fill(white);
}
