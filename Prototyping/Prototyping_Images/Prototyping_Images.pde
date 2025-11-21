/* Aspect Ratio: Bali Only Demonstration
- Hoi An 
*/
//
//Display
//fullScreen(); //Landscape
size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height)
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Lesson Dependancies Folder/Images/";
String bali = "bali";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + bali + fileExtensionJPG;
//println("Bali Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 900; //Hardcoded
int imageHeight1 = 600; //Hardcoded
//
//
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight )
//
//image( image1, X, Y, Width, Height );
