void measles3() {
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
