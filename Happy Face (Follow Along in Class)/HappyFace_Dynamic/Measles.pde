void measles() {
  measlesX = random(width*1/2-height*7/15, width*1/2+height*7/15);
  measlesY = random(height);
  measlesDiameter = random(height*1/30, height*1/15);
  //
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(white);
}
