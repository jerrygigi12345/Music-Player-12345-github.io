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
float stringimageX1 = appWidth * 2/24;
float stringimageY1 = appHeight * 2.1/12;
float stringimageWidth1 = appWidth * 8/24;
float stringimageHeight1 = appHeight * 5/12;

float stringlyrics_boxX2 = appWidth * 2/24;
float stringlyrics_boxY2 = appHeight * 2.1/12;
float stringlyrics_boxWidth2 = appWidth * 8/24;
float stringlyrics_boxHeight2 = appHeight * 5/12;

float stringimageX3 = appWidth * 2/24;
float stringimageY3 = appHeight * 2.1/12;
float stringimageWidth3 = appWidth * 8/24;
float stringimageHeight3 = appHeight * 5/12;
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
float MicrosoftHimalayaAspectRatio = fontSize / stringimageHeight;
fontSize = stringimageHeight*MicrosoftHimalayaAspectRatio;
println("Microsoft Himalaya Aspect Ratio:", MicrosoftHimalayaAspectRatio);
//
//Note: DIV to "see" variables
rect(stringimageX1, stringimageY1, stringimageWidth1, stringimageHeight1);
rect(stringlyrics_boxX2, stringlyrics_boxY2, stringlyrics_boxWidth2, stringlyrics_boxHeight2);
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
while ( textWidth( title ) > stringDivWidth ) {
  iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease;
  textFont(titleFont, fontSize);
} //End WHILE Error Check Text-wrap
println("Iterations of WHILE:", iWhile, "\tDifference of imageWidth & textWidth:", stringimageWidth-textWidth( title ), "\tUsing", constantDecrease*100+"%" );
text( title, stringimageX, stringimageY, stringimageWidth, stringimageHeight );
fill(resetInk);
//
//End Program
