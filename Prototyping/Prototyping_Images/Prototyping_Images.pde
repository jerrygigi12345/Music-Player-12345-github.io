/* Aspect Ratio: Bali Only Demonstration
- Hoi An 
*/
//
//Display
fullScreen(); //Landscape
size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*4/5
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
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
//How to make image bigger or smaller
println("Aspect Ratio >1"image1AspectRatio_GreaterOne, "Testing for Decimals, form);
//Algorithm Decisions (choice)
//Aspect Ratio

if () {} else {} //End IF Aspect Ratio

//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight )
//
image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted ); 
