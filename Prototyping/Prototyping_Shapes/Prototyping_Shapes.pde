/* DIVs 2D Rectangles
- Step One: nameing the rectangles by referencing the variables
- Writing a computer program backwards from an object

Future Steps
- Step Two: developing the Display CANVAS & the Ternary Operator
- Step Three: populating variables (local v global and type)
- turning on and off the prototype
*/
//
//Display CANVAS
//size(); //width //height
fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//rect(x, y, width, height);
//Note: the debuggger expects rectangles to have float or double type variables
//Using Ratios

float stopX = appWidth * 3.2/24;
float stopY = appHeight * 9.9/12;
float stopWidth = appWidth * 1.5/24;
float stopHeight = appHeight * 1/12;
//
float stop1X =  stopX + stopWidth * 1/4;
float stop1Y = stopY + stopHeight * 1/4;
float stop1Width = stopWidth * 2/4;
float stop1Height = stopHeight * 2/4;
//
float randomX = appWidth * 5.1/24;
float randomY = appHeight * 9.9/12;
float randomWidth = appWidth * 1.5/24;
float randomHeight = appHeight * 1/12;
//
float imageX = appWidth * 1/4;
float imageY = appHeight * 1/4;
float imageWidth = appWidth * 1/2;
float imageHeight = appHeight * 1/2;
//
float playX = appWidth * 11.1/24;
float playY = appHeight * 9.9/12;
float playWidth = appWidth * 1.5/24;
float playHeight = appHeight * 1/12;
//
float playX1 = playX + playWidth * 1/4;
float playY1 = playY + playHeight * 1/4;
float playX2 = playX + playWidth * 3/4;
float playY2 = playY + playHeight * 1/2;
float playX3 = playX + playWidth * 1/4;
float playY3 = playY + playHeight * 3/4;
//
float closeX = appWidth * 22.5/24;
float closeY = appHeight * 0.5/12;
float closeWidth = appWidth * 1/24;
float closeHeight = appHeight * 0.8/12;
//
float closeX1 = closeX + closeWidth * 1/4;
float closeY1 = closeY + closeHeight * 1/4;
float closeX2 = closeX + closeWidth * 3/4;
float closeY2 = closeY + closeHeight * 3/4;
float closeX3 = closeX + closeWidth * 3/4;
float closeY3 = closeY + closeHeight * 1/4;
float closeX4 = closeX + closeWidth * 1/4;
float closeY4 = closeY + closeHeight * 3/4;
rect(imageX, imageY, imageWidth, imageHeight);
rect(playX, playY, playWidth, playHeight);
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
rect(closeX, closeY, closeWidth, closeHeight);
line(closeX1, closeY1, closeX2, closeY2);
line(closeX3, closeY3, closeX4, closeY4);
rect(stopX, stopY, stopWidth, stopHeight);
rect(stop1X, stop1Y, stop1Width, stop1Height);
//
//square(nameX, nameY, nameDimension);
//line(nameX1, nameY1, nameX2, nameY2);
//triangle(nameX1, nameY1, nameX2, nameY2, nameX3, nameY3);
