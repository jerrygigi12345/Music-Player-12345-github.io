/* DIVs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Ruler action of numbers, verify by changing ratio numbers from GUI DIVs
float stopX = divX + divWidth * 1/4;
float stopY = divY + divHeight * 1/4;;
float stopWidth = divWidth * 1/2;
float stopHeight = divHeight * 1/2;



float divX = appWidth * 1/4;
float divY = appHeight * 25/100;
float divWidth = appWidth * 1/2;
float divHeight = appHeight * 1/2;
//Paperfolding action of ratios, never changes
//Order of Operations: ruler + paperfolding = correct location
float playX1 = divX + divWidth * 1/4; 
float playY1 = divY + divHeight * 1/4;
float playX2 = divX + divWidth * 3/4;
//
//DIVs: for human confirmation of formulaic and variable accuracy
rect(divX, divY, divWidth, divHeight); ////Group of Variables
//
//Library of Symbols, requires DIVs
rect(X, Y, Width, Height);
//triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables





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
