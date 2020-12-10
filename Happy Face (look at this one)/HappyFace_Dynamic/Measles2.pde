void measles2() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles2X = random(faceSquareX+height*9/75, faceSquareX+faceSquareSide-height*9/75);
  measles2Y = random(faceSquareY+height*16/75, faceSquareY+faceSquareSide-height*16/75);
  //
  fill(measlesColor);
  ellipse(measles2X, measles2Y, measlesDiameter, measlesDiameter);
  fill(white);
}
