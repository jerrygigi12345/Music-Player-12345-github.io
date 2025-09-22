print("HelloWorld");
println("I just wanted to be cool.");









//
//Display CANVAS
//size(); //width //height
fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//rect(x, y, width, height);
//Note: the debuggger expects rectangles to have float or double type variables
//Using Ratios
float imageX = appWidth * 1/4;
float imageY = appHeight * 1/4;
float imageWidth = appWidth * 1/2;
float imageHeight = appHeight * 1/2;
//
rect(imageX, imageY, imageWidth, imageHeight);
