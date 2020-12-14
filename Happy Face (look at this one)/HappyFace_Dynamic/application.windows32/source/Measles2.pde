void measles2() {
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
