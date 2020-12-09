//Global Variables
float trunkX1, trunkY1, trunkX2, trunkY2, trunkThick;
float leaf1X1, leaf1Y1, leaf1X2, leaf1Y2, leaf1X3, leaf1Y3;
float leaf2X1, leaf2Y1, leaf2X2, leaf2Y2, leaf2X3, leaf2Y3;
float leaf3X1, leaf3Y1, leaf3X2, leaf3Y2, leaf3X3, leaf3Y3;
float snowX, snowY, snowDiameter;
color green =#0E5D14, white = #FFFFFF;

void setup() {
  fullScreen(); 
  //displayWidth & displayHeight //General Geometry: landscape, potrait, or square
  //
  //Variable Population
  populatingVariables();
}//End setup

void draw() {
  snowX = random(height);
  snowY = random(width);
  snowDiameter = random(height*1/50, height*1/25);
  //
  ellipse(snowX, snowY, snowDiameter, snowDiameter);
  //
  //Tree
  //Trunk
  strokeWeight(trunkThick);
  strokeCap(SQUARE);
  line(trunkX1, trunkY1, trunkX2, trunkY2);
  strokeWeight (1);
  //Leaf Section 1
  fill (green);
  triangle(leaf1X1, leaf1Y1, leaf1X2, leaf1Y2, leaf1X3, leaf1Y3);
  //Leaf Section 2
  triangle(leaf2X1, leaf2Y1, leaf2X2, leaf2Y2, leaf2X3, leaf2Y3);
  //Leaf Section 3
  triangle(leaf3X1, leaf3Y1, leaf3X2, leaf3Y2, leaf3X3, leaf3Y3);
  fill (white);
  //
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {
}//End mousePressed
