void measles() {
  measlesDiameter = random(height*1/30, height*1/15);
  measlesX = random(faceSquareX+height*16/75, faceSquareX+faceSquareSide-height*16/75);
  measlesY = random(faceSquareY+height*9/75, faceSquareY+faceSquareSide-height*9/75);
  //
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(white);
}
