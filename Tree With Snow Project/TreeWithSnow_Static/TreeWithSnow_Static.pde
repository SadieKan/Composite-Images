//Global Variables
float trunkX1, trunkY1, trunkX2, trunkY2, trunkThick;
float leaf1X1, leaf1Y1, leaf1X2, leaf1Y2, leaf1X3, leaf1Y3;
float leaf2X1, leaf2Y1, leaf2X2, leaf2Y2, leaf2X3, leaf2Y3;
float leaf3X1, leaf3Y1, leaf3X2, leaf3Y2, leaf3X3, leaf3Y3;
float snowX, snowY, snowDiameter;
color green =#0E5D14, white = #FFFFFF;
//
//Display Geometry
fullScreen(); //displayWidth & displayHeight //General Geometry: landscape, potrait, or square
//
//Populating Variables
trunkX1 = width/2;
trunkY1 = height*12/20;
trunkX2 = width/2;
trunkY2 = height*16/20;
trunkThick = 40;
leaf1X1 = width*1/2;
leaf1Y1 = height*6/20;
leaf1X2 = width*7/20;
leaf1Y2 = height*13/20;
leaf1X3 = width*13/20;
leaf1Y3 = leaf1Y2;
leaf2X1 = width*1/2;
leaf2Y1 = height*4/20;
leaf2X2 = width*8/20;
leaf2Y2 = height*9/20;
leaf2X3 = width*12/20;
leaf2Y3 = leaf2Y2;
leaf3X1 = width*1/2;
leaf3Y1 = height*1/10;
leaf3X2 = width*17/40;
leaf3Y2 = height*3/10;
leaf3X3 = width*23/40;
leaf3Y3 = leaf3Y2;
snowX = random(width);
snowY = random(height);
snowDiameter = random(height*1/50, height*1/25);
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
//Snow
ellipse(snowX, snowY, snowDiameter, snowDiameter);
