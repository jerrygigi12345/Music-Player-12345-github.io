/* String
*/
//
//Display
fullScreen(); //Landscape
//size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float imageX = appWidth * 2/24;
float imageY = appHeight * 2.1/12;
float imageWidth = appWidth * 8/24;
float imageHeight = appHeight * 5/12;
//
//Strings, Text, Literal
String title = "Wahoo!";
println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
//Fonts from OS
String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
//
float fontSize = 48; //Entire Program
PFont titleFont; //Font Var name
String microsoft himalaya = "Microsoft Himalaya";
titleFont = createFont (microsoft himalaya, fontSize);
//Tools / Create Font / Find Font / Do not press "OK"
//
println(fontSize, microsoft himalaya, titleFont)
//Note: DIV to "see" variables
rect( stringX, stringY, stringWidth, stringHeight );
//
color pinkInk = #F793C4; //Hexidecimal
fill(pinkInk); //Ink, Grey Scale 0-255
textFont(titleFont, fontSize);
text( title, stringX, stringY, stringWidth, stringHeight );
