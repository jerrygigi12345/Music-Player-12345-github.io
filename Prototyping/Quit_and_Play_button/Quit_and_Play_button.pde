/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - MouseX & Y keyVariables
 
 - What to copy and paste
 - Quit & Play DIV
 
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
//
Boolean playButton=false;
//
void setup() {
  //Display
  size(500, 400);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population
  float closeX = appWidth * 22.5/24;
  float closeY = appHeight * 0.5/12;
  float closeWidth = appWidth * 1/24;
  float closeHeight = appHeight * 0.8/12;
  //
  float closeX1 = closeX + closeWidth * 1/4;
  float closeY1 = closeY + closeHeight * 1/4;
  float closeX2 = closeX + closeWidth * 3/4;
  float closeY2 = closeY + closeHeight * 3/4;
  float closeX3 = closeX + closeWidth * 3/4;
  float closeY3 = closeY + closeHeight * 1/4;
  float closeX4 = closeX + closeWidth * 1/4;
  float closeY4 = closeY + closeHeight * 3/4;
  //
  float playX = appWidth * 11.1/24;
  float playY = appHeight * 9.9/12;
  float playWidth = appWidth * 1.5/24;
  float playHeight = appHeight * 1/12;
  //
  float playX1 = playX + playWidth * 1/4;
  float playY1 = playY + playHeight * 1/4;
  float playX2 = playX + playWidth * 3/4;
  float playY2 = playY + playHeight * 1/2;
  float playX3 = playX + playWidth * 1/4;
  float playY3 = playY + playHeight * 3/4;
  //DIVs
  rect(closeX, closeY, closeWidth, closeHeight);
  line(closeX1, closeY1, closeX2, closeY2);
  line(closeX3, closeY3, closeX4, closeY4);
  rect(playX, playY, playWidth, playHeight);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  //
  //Color Population
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  //CANVAS: default background and ink
  resetBackground = white;
  resetInk = black;
  //Button Colours
  color orange = #FF4B27;
  color blue = #5DC7FF;
  color green = #66D329;
  color grayScale = 256/2; //Example Gray Scale, small memory
  color gray = #B9B9B9; //Example Gray Scale, large memory
  playColourBackground = blue;
  playColourSymbol = green;
  playColourBackgroundActivated = green;
  playColourSymbolActivated = blue;
  quitBackground = white;
  quitBackgroundActivated = orange;
    //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //Button HoverOver
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    //println("Wahoo! I'm playing you");
    playButton = true;
    fill(playColourBackgroundActivated);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbolActivated);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    fill(resetBackground);
  } else {
    //print(" ");
    playButton = false;
    fill(playColourBackground);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbol);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    fill(resetBackground);
  }//End Play Button Hover Over
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    fill(quitBackgroundActivated);
    rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
    fill(resetBackground);
  } else {
    fill(quitBackground);
    rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
    fill(resetBackground);
  }//End Quit Button Hover Over
  //
} //End draw
//
void mousePressed() {
  //Music Play Functions
  if ( playButton == true ) {
    println("Play My Song");
    playButton=false; //reset Boolean for draw()
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
