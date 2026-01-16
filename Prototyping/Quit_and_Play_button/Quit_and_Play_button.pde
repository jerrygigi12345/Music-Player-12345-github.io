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
float closeX, closeY, closeWidth, closeHeight;
float closeX1, closeY1, closeX2, closeY2;
float closeX3, closeY3, closeX4, closeY4;
float playX, playY, playWidth, playHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
//
Boolean playButton=false, closeButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color closeButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color closeBackground, closeBackgroundActivated;
Boolean nightMode=false;
//
void setup() {
  //Display
  size(500, 400);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population
  closeX = appWidth * 22.5/24;
  closeY = appHeight * 0.5/12;
  closeWidth = appWidth * 1/24;
  closeHeight = appHeight * 0.8/12;
  //
  closeX1 = closeX + closeWidth * 1/4;
  closeY1 = closeY + closeHeight * 1/4;
  closeX2 = closeX + closeWidth * 3/4;
  closeY2 = closeY + closeHeight * 3/4;
  closeX3 = closeX + closeWidth * 3/4;
  closeY3 = closeY + closeHeight * 1/4;
  closeX4 = closeX + closeWidth * 1/4;
  closeY4 = closeY + closeHeight * 3/4;
  //
  playX = appWidth * 11.1/24;
  playY = appHeight * 9.9/12;
  playWidth = appWidth * 1.5/24;
  playHeight = appHeight * 1/12;
  //
  playX1 = playX + playWidth * 1/4;
  playY1 = playY + playHeight * 1/4;
  playX2 = playX + playWidth * 3/4;
  playY2 = playY + playHeight * 1/2;
  playX3 = playX + playWidth * 1/4;
  playY3 = playY + playHeight * 3/4;
  //DIVs
  rect(closeX, closeY, closeWidth, closeHeight);
  line(closeX1, closeY1, closeX2, closeY2);
  line(closeX3, closeY3, closeX4, closeY4);
  rect(playX, playY, playWidth, playHeight);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  //
  //Color Population
  nightMode=false;
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  color grayScale = 256/2; //Example Gray Scale, small memory
  color gray = #B9B9B9; //Example Gray Scale, large memory
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of origoinal, not 1/4
  //println("Casting answer is:", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator
  //Button Colours: layering local variables leads to preferences controled by Booleans
  color orange = #FF4B27;
  color blue = #5DC7FF;
  color green = #66D329;
  color darkGray = grayScale;
  color ligthGray = gray;
  //Note: able to use a Ternary Operator but ineffiecient
  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = darkGray;
    playColourSymbol = ligthGray;
    playColourBackgroundActivated = ligthGray;
    playColourSymbolActivated = darkGray;
    quitBackground = ligthGray;
    quitBackgroundActivated = red;
    quitButtonInk = darkGray;
  } else
  {
    //Previously the Day Colour Assignments
    resetBackground = resetBackgroundDay;
    resetInk = black;
    playColourBackground = blue;
    playColourSymbol = green;
    playColourBackgroundActivated = green;
    playColourSymbolActivated = blue;
    closeBackground = white;
    closeBackgroundActivated = orange;
    closeButtonInk = black;
  } //End Night Mode Colors
    //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //Button HoverOver
  if ( mouseX>playX && mouseX<playX+playWidth && mouseY>playY && mouseY<playY+playHeight ) {
    //println("Wahoo! I'm playing you");
    playButton = true;
    fill(playColourBackgroundActivated);
    rect(playX, playY, playWidth, playHeight);
    fill(playColourSymbolActivated);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackground);
  } else {
    //print(" ");
    playButton = false;
    fill(playColourBackground);
    rect(playX, playY, playWidth, playHeight);
    fill(playColourSymbol);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackground);
  }//End Play Button Hover Over
  if ( mouseX>closeX && mouseX<closeX+closeWidth && mouseY>closeY &&mouseY<closeY+closeHeight ) {
    fill(closeBackgroundActivated);
    rect(closeX, closeY, closeWidth, closeHeight);
    fill(resetBackground);
  } else {
    fill(closeBackground);
    rect(closeX, closeY, closeWidth, closeHeight);
    fill(resetBackground);
    fill(closeButtonInk);
    //Note: rect() starts top-right corner, text() starts bottom-right corner
   text("X", closeX+closeWidth*1/2, closeY+closeHeight*3/5); //adjust fractions or decimals until working
    fill(resetInk);
  } else {
    fill(closeBackground);
    rect(closeX, closeY, closeWidth, closeHeight);
    fill(resetBackground);
    fill(closeButtonInk);
    //Note: rect() starts top-right corner, text() starts bottom-right corner
    text("X", closeX+closeWidth*1/2, closeY+closeHeight*3/5); //adjust fractions or decimals until working
    fill(resetInk);
  }//End Close Button Hover Over
  //
} //End draw
//
void mousePressed() {
  //Close Button: does not use Boolean, only mouseX&Y already present in system key variables
  if ( mouseX>closeX && mouseX<closeX+closeWidth && mouseY>closeY &&mouseY<closeY+closeHeight ) {
    noLoop(); //Adjusts the exit of the program using finishing draw()
    exit(); //With noLoop(), exit happens here
    println("Final Line of mousePressed and finishes draw()");
  }
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
