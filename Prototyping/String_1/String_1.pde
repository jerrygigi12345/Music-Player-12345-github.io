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

float stringimageX2 = appWidth * 2/24;
float stringimageY2 = appHeight * 2.1/12;
float stringimageWidth2 = appWidth * 8/24;
float stringimageHeight2 = appHeight * 5/12;

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


//
color pinkInk = #F793C4; //Hexidecimal
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(pinkInk); //Ink, Grey Scale 0-255
textFont(titleFont, fontSize);
//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than onePFont Variable
//
text( title, stringimageX, stringimageY, stringimageWidth, stringimageHeight );
fill(resetInk);
//
//End Program
