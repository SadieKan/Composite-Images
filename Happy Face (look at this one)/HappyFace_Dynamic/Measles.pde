void measles() {
  measlesDiameter = random(height*1/30, height*1/15);
  measlesX = random(faceSquareX+measlesDiameter/2, faceSquareX+faceSquareSide-measlesDiameter/2);
  measlesY = random(height);
  //
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(white);
}
