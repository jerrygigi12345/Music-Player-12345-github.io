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
int numberOfDIVs = 3;
float[] stringRectX = new float[numberOfDIVs];
float[] stringRectY = new float[numberOfDIVs];
float[] stringRectWidth = new float[numberOfDIVs];
float[] stringRectHeight = new float[numberOfDIVs];
stringRectX[0] = appWidth*1/4; //**Akward DIV
stringRectY[0] = appHeight*1/10;
stringRectWidth[0] = appWidth*1/2;
stringRectHeight[0] = appHeight*1/10; // ** Make smaller to test height
stringRectX[1] = stringDivX[0]; //Cascading VARs
stringRectY[1] = appHeight*3/10;
stringRectWidth[1] = appWidth*1/4;
stringRectHeight[1] = stringDivHeight[0]; //Cascading VARs
stringRectX[2] = stringDivX[0]; //Cascading VARs, best practice
stringRectY[2] = appHeight*5/10;
stringRectWidth[2] = appWidth*5/8;
stringRectHeight[2] = stringDivHeight[0]; //Cascading VARs, best practice
//
//Strings, Text, Literal
String title = "Wahoo!";
/*Fonts from OS
println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
String[] fontList = PFont.list(); //To list all fonts available on system
printArray(fontList); //For listing all possible fonts to choose, then createFont
//Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
//Tools / Create Font / Find Font / Do not press "OK", known conflict between loadFont() and createFont()
*/
float fontSize = appHeight; //Entire Program
PFont titleFont; //Font Var name
String MicrosoftHimalaya = "Microsoft Himalaya";
titleFont = createFont (MicrosoftHimalaya, fontSize);

println(fontSize, MicrosoftHimalaya, titleFont);
fontSize = 100.0;
println("FontSize:", fontSize );
/*Aspect Ratio Manipulations (change to variables)
- choose Aspect Ratio that must be multiplied: fontSize/titleHeight
- Rewriting fontSize with formula
*/
float MicrosoftHimalayaAspectRatio = fontSize / stringimageHeight1;
fontSize = stringimageHeight1*MicrosoftHimalayaAspectRatio;
println("Microsoft Himalaya Aspect Ratio:", MicrosoftHimalayaAspectRatio);
//
//Note: DIV to "see" variables
rect(stringimageX1, stringimageY1, stringimageWidth1, stringimageHeight1);
rect(stringimageX2, stringimageY2, stringimageWidth2, stringimageHeight2);
rect(stringimageX3, stringimageY3, stringimageWidth3, stringimageHeight3);
//
color pinkInk = #F793C4; //Hexidecimal
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(pinkInk); //Ink, Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize);
float constantDecrease = 0.99;
int iWhile=0;
while ( textWidth( title ) > stringimageWidth1 ) {
  iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease;
  textFont(titleFont, fontSize);
} //End WHILE Error Check Text-wrap
println("Iterations of WHILE:", iWhile, "\tPixel difference of imageWidth & textWidth:", stringimageWidth-textWidth( title ), "\tUsing", constantDecrease*100+"%" );
text( title, stringimageX, stringimageY, stringimageWidth, stringimageHeight );
fill(resetInk);
//
//End Program
