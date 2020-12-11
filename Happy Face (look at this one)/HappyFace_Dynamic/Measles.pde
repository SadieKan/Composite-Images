void measles() {
  measlesDiameter = random(height*1/30, height*1/15);
  measlesX = random(faceSquareX+height*16/75, faceSquareX+faceSquareSide-height*16/75);
  measlesY = random(faceSquareY+height*9/75, faceSquareY+faceSquareSide-height*9/75);
  measlesX2 = random(faceSquareX+height*9/75, faceSquareX+faceSquareSide-height*9/75);
  measlesY2 = random(faceSquareY+height*16/75, faceSquareY+faceSquareSide-height*16/75);
  //
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  ellipse(measlesX2, measlesY2, measlesDiameter, measlesDiameter);
  fill(white);
}
