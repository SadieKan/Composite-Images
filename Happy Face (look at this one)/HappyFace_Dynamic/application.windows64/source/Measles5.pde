void measles5() {
  measlesDiameter = random(height*1/30, height*1/15);
  measles5X = random(faceSquareX+height*12/75, faceSquareX+faceSquareSide-height*12/75);
  measles5Y = random(faceSquareY+height*12/75, faceSquareY+faceSquareSide-height*12/75);  
  //
  fill(measlesColor);
  ellipse(measles5X, measles5Y, measlesDiameter, measlesDiameter);
  fill(white);
}
