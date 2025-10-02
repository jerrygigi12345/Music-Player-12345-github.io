/* DIVs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * ;
float imageY = appHeight * ;
float imageWidth = appWidth * ;
float imageHeight = appHeight * ;
float playX1 = imageX + appWidth * 1/4;
float playY1 = imageY + appHeight * 1/4;
float playX2 = appWidth * 3/4;
float playY2 = appHeight * 1/2;
float playX3 = imageX + appWidth * 1/4;
float playY3 = imageY + appHeight * 3/4;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, play Y3);
