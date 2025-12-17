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
stringRectX[0] = appWidth*1.0/4.0;
stringRectY[0] = appHeight*1.0/10.0;
stringRectWidth[0] = appWidth*1.0/2.0;
stringRectHeight[0] = appHeight*1.0/10.0;
stringRectX[1] = stringRectX[0]; //Cascading VARs
stringRectY[1] = appHeight*3.0/10.0;
stringRectWidth[1] = appWidth*1.0/4.0;
stringRectHeight[1] = stringRectHeight[0]; //Cascading VARs
stringRectX[2] = stringRectX[0]; //Cascading VARs, best practice
stringRectY[2] = appHeight*5.0/10.0;
stringRectWidth[2] = appWidth*5.0/8.0;
stringRectHeight[2] = stringRectHeight[0];//Cascading VARs, best practice
//
//Strings, Text, Literal
String[] text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
text[0] = "Artist";
text[1] = "Song";
text[2] = "Lyrics box";
//
//Fonts from OS
println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
String[] fontList = PFont.list(); //To list all fonts available on system
printArray(fontList); //For listing all possible fonts to choose, then createFont
//Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
//Tools / Create Font / Find Font / Do not press "OK", known conflict between loadFont() and createFont()
//
float fontSize = appHeight; //Entire Program
PFont titleFont; //Font Var name
String MicrosoftHimalaya = "Microsoft Himalaya";
titleFont = createFont (MicrosoftHimalaya, fontSize);

println(fontSize, MicrosoftHimalaya, titleFont);
float fontSizeMicrosoftHimalaya = 85.0;
//Hardcoded - fontSizeMicrosoftHimalaya
println("Font Size:", fontSize );

/*Aspect Ratio Manipulations (change to variables)
- choose Aspect Ratio that must be multiplied: fontSize/titleHeight
- Rewriting fontSize with formula
*/
float MicrosoftHimalayaAspectRatio = fontSizeMicrosoftHimalaya / stringRectHeight[0]//first div
fontSize = stringRectHeight[0] * MicrosoftHimalayaAspectRatio;
println("Microsoft Himalaya Aspect Ratio:", MicrosoftHimalayaAspectRatio);
println();//skip line
//
//Note: DIV to "see" variables
for ( int i=0; i<numberofDIVS; i++){
rect(stringRectX[i], stringRectY[i], stringRectWidth[i], stringRectHeight[i]);
}// End of DIVS
//
color pinkInk = #F793C4; //Hexidecimal
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(pinkInk); //Ink, Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
textFont(titleFont, fontSize);
float constantDecrease = 0.99;
int iWhile=0;
for( int i=0; i<3; i++)
while ( textWidth( title ) > stringRectWidth[i] ) {
  iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease;
  textFont(titleFont, fontSize);
} //End WHILE Error Check Text-wrap
println("Iterations of WHILE:", iWhile, "\tPixel difference of imageWidth & textWidth:", stringRectWidth[i]-textWidth( title[i] ), "\tUsing", constantDecrease*100+"%" );
for( int i=0; i<3; i++){
text( title[i], stringRectX[i], stringRectY[i], stringRectWidth[i], stringRectHeight[i] );
}
fill(resetInk);
//
//End Program
