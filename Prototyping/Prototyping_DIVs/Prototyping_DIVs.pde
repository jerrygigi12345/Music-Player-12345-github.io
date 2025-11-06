//
//Display CANVAS
//size(); //width //height
fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//rect(x, y, width, height);
//Note: the debuggger expects rectangles to have float or double type variables
//Using Ratios
float imageX = appWidth * 2/24;
float imageY = appHeight * 2.1/12;
float imageWidth = appWidth * 8/24;
float imageHeight = appHeight * 5/12;

float stopX = appWidth * 1/24;
float stopY = appHeight * 9.9/12;
float stopWidth = appWidth * 1/24;
float stopHeight = appHeight * 1/12;

float playX = appWidth * 1/24;
float playY = appHeight * 9.9/12;
float playWidth = appWidth * 1/24;
float playHeight = appHeight * 1/12;

float closeX = appWidth * 22.5/24;
float closeY = appHeight * 0.5/12;
float closeWidth = appWidth * 1/24;
float closeHeight = appHeight * 1/12;

float forwardX = appWidth * 1/24;
float forwardY = appHeight * 9.9/12;
float forwardWidth = appWidth * 1/24;
float forwardHeight = appHeight * 1/12;

float reverseX = appWidth * 1/24;
float reverseY = appHeight * 9.9/12;
float reverseWidth = appWidth * 1/24;
float reverseHeight = appHeight * 1/12;

float fast-forwardX = appWidth * 1/24;
float fast-forwardY = appHeight * 9.9/12;
float fast-forwardWidth = appWidth * 1/24;
float fast-forwardHeight = appHeight * 1/12;

float rewindX = appWidth * 1/24;
float rewindY = appHeight * 9.9/12;
float rewindWidth = appWidth * 1/24;
float rewindHeight = appHeight * 1/12;

float artistX = appWidth * 14/24;
float artistY = appHeight * 2.1/12;
float artistWidth = appWidth * 1/24;
float artistHeight = appHeight * 1/12;

float lyricsX = appWidth * 1/24;
float lyricsY = appHeight * 9.9/12;
float lyricsWidth = appWidth * 1/24;
float lyricsHeight = appHeight * 1/12;

float loveX = appWidth * 21/24;
float loveY = appHeight * 7.4/12;
float loveWidth = appWidth * 1/24;
float loveHeight = appHeight * 1/12;

float settingsX = appWidth * 22.5/24;
float settingsY = appHeight * 2/12;
float settingsWidth = appWidth * 1/24;
float settingsHeight = appHeight * 1/12;

float accountX = appWidth * 0.5/24;
float accountY = appHeight * 0.5/12;
float accountWidth = appWidth * 1/2;
float accountHeight = appHeight * 1/2;

float songX = appWidth * 1/4;
float songY = appHeight * 1/4;
float songWidth = appWidth * 1/2;
float songHeight = appHeight * 1/2;

float timeX = appWidth * 1/4;
float timeY = appHeight * 1/4;
float timeWidth = appWidth * 1/2;
float timeHeight = appHeight * 1/2;

float repeatX = appWidth * 1/4;
float repeatY = appHeight * 1/4;
float repeatWidth = appWidth * 1/2;
float repeatHeight = appHeight * 1/2;

float randomX = appWidth * 1/4;
float randomY = appHeight * 1/4;
float randomWidth = appWidth * 1/2;
float randomHeight = appHeight * 1/2;

float muteX = appWidth * 1/4;
float muteY = appHeight * 1/4;
float muteWidth = appWidth * 1/2;
float muteHeight = appHeight * 1/2;

float lyrics-boxX = appWidth * 1/4;
float lyrics-boxY = appHeight * 1/4;
float lyrics-boxWidth = appWidth * 1/2;
float lyrics-boxHeight = appHeight * 1/2;

float start-timeX = appWidth * 1/4;
float start-timeY = appHeight * 1/4;
float start-timeWidth = appWidth * 1/2;
float start-timeHeight = appHeight * 1/2;

float end-timeX = appWidth * 21/24;
float end-timeY = appHeight * 9/12;
float end-timeWidth = appWidth * 1/2;
float end-timeHeight = appHeight * 1/2;

float timelineX = appWidth * 1/4;
float timelineY = appHeight * 1/4;
float timelineWidth = appWidth * 1/2;
float timelineHeight = appHeight * 1/2;

float playheadX = appWidth * 1/4;
float playheadY = appHeight * 1/4;
float playheadWidth = appWidth * 1/2;
float playheadHeight = appHeight * 1/2;

//
rect(imageX, imageY, imageWidth, imageHeight);
rect(stopX, stopY, stopWidth, stopHeight);
rect(playX, playY, playWidth, playHeight);
rect(closeX, closeY, closeWidth, closeHeight);
rect(forwardX, forwardY, forwardWidth, forwardHeight);
rect(reverseX, reverseY, reverseWidth, reverseHeight);
rect(fast-forwardX, fast-forwardY, fast-forwardWidth, fast-forwardHeight);
rect(rewindX, rewindY, rewindWidth, rewindHeight);
rect(artistX, artistY, artistWidth, artistHeight);
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);
rect(loveX, loveY, loveWidth, loveHeight);
rect(settingsX, settingsY, settingsWidth, settingsHeight);
rect(accountX, accountY, accountWidth, accountHeight);
rect(songX, songY, songWidth, songHeight);
rect(timeX, timeY, timeWidth, timeHeight);
rect(repeatX, repeatY, repeatWidth, repeatHeight);
rect(randomX, randomY, randomWidth, randomHeight);
rect(muteX, muteY, muteWidth, muteHeight);
rect(lyrics-boxX, lyrics-boxY, lyrics-boxWidth, lyrics-boxHeight);
rect(start-timeX, start-timeY, start-timeWidth, start-timeHeight);
rect(end-timeX, end-timeY, end-timeWidth, end-timeHeight);
rect(timelineX, timelineY, timelineWidth, timelineHeight);
rect(playheadX, playheadY, playheadWidth, playheadHeight);
