float xPlay, yPlay, widthPlay, heightPlay;
float xPause, yPause, widthPause, heightPause;
float xRewind, yRewind, widthRewind, heightRewind;
float xForward, yForward, widthForward, heightForward;
float xNext, yNext, widthNext, heightNext;
float xLast, yLast, widthLast, heightLast;
float xLoop, yLoop, widthLoop, heightLoop;
//
float playLargerDimension, playSmallerDimension;
float pauseLargerDimension, pauseSmallerDimension;
float rewindLargerDimension, rewindSmallerDimension;
float forwardLargerDimension, forwardSmallerDimension;
float nextLargerDimension, nextSmallerDimension;
float lastLargerDimension, lastSmallerDimension;
float loopLargerDimension, loopSmallerDimension;
//
float playWidthAdjusted, playWidthRatio=0.0, playHeightRatio=0.0, playHeightAdjusted;
float pauseWidthAdjusted, pauseWidthRatio=0.0, pauseHeightRatio=0.0, pauseHeightAdjusted;
float rewindWidthAdjusted, rewindWidthRatio=0.0, rewindHeightRatio=0.0, forwardHeightAdjusted;
float forwardWidthAdjusted, forwardWidthRatio=0.0, forwardHeightRatio=0.0, rewindHeightAdjusted;
float nextWidthAdjusted, nextWidthRatio=0.0, nextHeightRatio=0.0, nextHeightAdjusted;
float lastWidthAdjusted, lastWidthRatio=0.0, lastHeightRatio=0.0, lastHeightAdjusted;
float loopWidthAdjusted, loopWidthRatio=0.0, loopHeightRatio=0.0, loopHeightAdjusted;
//
Boolean widthPlayLarger=false, heightPlayLarger=false;
Boolean widthPauseLarger=false, heightPauseLarger=false;
Boolean widthRewindLarger=false, heightRewindLarger=false;
Boolean widthForwardLarger=false, heightForwardLarger=false;
Boolean widthNextLarger=false, heightNextLarger=false;
Boolean widthLastLarger=false, heightLastLarger=false;
Boolean widthLoopLarger=false, heightLoopLarger=false;
//
PImage pause, play, rewind, forward, next, last, loop;
//

//
void musicButtons () {
   size(900,700);//Landscape (Portrait or Sqaure)
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if (width > displayWidth || height > displayHeight) {//CANVAS in Display Checker
    //CANVAS Too Big
    appWidth =displayWidth;
    appHeight = displayHeight;
    println ("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls = "Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru turn your phun";
  String orientation = ( appWidth>=appHeight) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populated a variable
  println( DO, orientation );
  if ( orientation==ls ) {//Test for chosen display orientation
    println("Good to go");
  } else {
    appWidth *=0; //assignment operator, words like appWidth=appWidth*0
    appHeight *=0;
    println(instruct);
  }
//Images
  play = loadImage("../images/playbutton.png");//Dimensions width 481, height 519
  int playWidth = 481;
  int playHeight = 519;
  if (playWidth>=playHeight) {
  playLargerDimension = playWidth;
  playSmallerDimension = playHeight;
  widthPlayLarger = true;
  } else {
  playLargerDimension = playWidth;
  playSmallerDimension = playHeight;
  heightPlayLarger = true;
  }
  if (widthPlayLarger == true) playWidthRatio = playLargerDimension / playLargerDimension;
  if (widthPlayLarger == true) playHeightRatio = playSmallerDimension / playLargerDimension; 
  if (heightPlayLarger == true) playWidthRatio = playLargerDimension / playLargerDimension;
  if (heightPlayLarger == true) playHeightRatio = playSmallerDimension / playLargerDimension; 
  //
  pause = loadImage("../images/pausebutton.png");//Dimensions width 500, height 500
  int pauseWidth = 500;
  int pauseHeight = 500;
  if (pauseWidth>=pauseHeight) {
  pauseLargerDimension = pauseWidth;
  pauseSmallerDimension = pauseHeight;
  widthPauseLarger = true;
  } else {
  pauseLargerDimension = pauseWidth;
  pauseSmallerDimension = pauseHeight;
  heightPauseLarger = true;
  }
  if (widthPauseLarger == true) pauseWidthRatio = pauseLargerDimension / pauseLargerDimension;
  if (widthPauseLarger == true) pauseHeightRatio = pauseSmallerDimension / pauseLargerDimension; 
  if (heightPauseLarger == true) pauseWidthRatio = pauseLargerDimension / pauseLargerDimension;
  if (heightPauseLarger == true) pauseHeightRatio = pauseSmallerDimension / pauseLargerDimension; 
  //
  rewind = loadImage("../images/rewindbutton.png");//Dimensions width 69, height 50
  int rewindWidth = 69;
  int rewindHeight = 50;
  if (rewindWidth>=rewindHeight) {
  rewindLargerDimension = rewindWidth;
  rewindSmallerDimension = rewindHeight;
  widthRewindLarger = true;
  } else {
  rewindLargerDimension = rewindWidth;
  rewindSmallerDimension = rewindHeight;
  heightRewindLarger = true;
  }
  if (widthRewindLarger == true) rewindWidthRatio = rewindLargerDimension / rewindLargerDimension;
  if (widthRewindLarger == true) rewindHeightRatio = rewindSmallerDimension / rewindLargerDimension; 
  if (heightRewindLarger == true) rewindWidthRatio = rewindLargerDimension / rewindLargerDimension;
  if (heightRewindLarger == true) rewindHeightRatio = rewindSmallerDimension / rewindLargerDimension; 
  //
  forward = loadImage("../images/fastfoward.png");//Dimensions width 69, height 49
  int forwardWidth = 69;
  int forwardHeight = 49;
  if (forwardWidth>=forwardHeight) {
  forwardLargerDimension = forwardWidth;
  forwardSmallerDimension = forwardHeight;
  widthForwardLarger = true;
  } else {
  forwardLargerDimension = forwardWidth;
  forwardSmallerDimension = forwardHeight;
  heightForwardLarger = true;
  }
  if (widthForwardLarger == true) forwardWidthRatio = forwardLargerDimension / forwardLargerDimension;
  if (widthForwardLarger == true) forwardHeightRatio = forwardSmallerDimension / forwardLargerDimension; 
  if (heightForwardLarger == true) forwardWidthRatio = forwardLargerDimension / forwardLargerDimension;
  if (heightForwardLarger == true) forwardHeightRatio = forwardSmallerDimension / forwardLargerDimension; 
  //
  next = loadImage("../images/nextsong.png");//Dimensions width 64, height 50
  int nextWidth = 64;
  int nextHeight = 50;
  if (nextWidth>=nextHeight) {
  nextLargerDimension = nextWidth;
  nextSmallerDimension = nextHeight;
  widthNextLarger = true;
  } else {
  nextLargerDimension = nextWidth;
  nextSmallerDimension = nextHeight;
  heightNextLarger = true;
  }
  if (widthNextLarger == true) nextWidthRatio = nextLargerDimension / nextLargerDimension;
  if (widthNextLarger == true) nextHeightRatio = nextSmallerDimension / nextLargerDimension; 
  if (heightNextLarger == true) nextWidthRatio = nextLargerDimension / nextLargerDimension;
  if (heightNextLarger == true) nextHeightRatio = nextSmallerDimension / nextLargerDimension; 
  //
  last = loadImage("../images/previoussong.png");//Dimensions width 64, height 50
  int lastWidth = 64;
  int lastHeight = 50;
  if (lastWidth>=lastHeight) {
  lastLargerDimension = lastWidth;
  lastSmallerDimension = lastHeight;
  widthLastLarger = true;
  } else {
  lastLargerDimension = lastWidth;
  lastSmallerDimension = lastHeight;
  heightLastLarger = true;
  }
  if (widthLastLarger == true) lastWidthRatio = lastLargerDimension / lastLargerDimension;
  if (widthLastLarger == true) lastHeightRatio = lastSmallerDimension / lastLargerDimension; 
  if (heightLastLarger == true) lastWidthRatio = lastLargerDimension / lastLargerDimension;
  if (heightLastLarger == true) lastHeightRatio = lastSmallerDimension / lastLargerDimension; 
  //
  loop = loadImage("../images/loopbbutton.png");//Dimensions width 64, height 50
  int loopWidth = 64;
  int loopHeight = 50;
  if (loopWidth>=loopHeight) {
  loopLargerDimension = loopWidth;
  loopSmallerDimension = loopHeight;
  widthLoopLarger = true;
  } else {
  loopLargerDimension = loopWidth;
  loopSmallerDimension = loopHeight;
  heightLoopLarger = true;
  }
  if (widthLoopLarger == true) loopWidthRatio = loopLargerDimension / loopLargerDimension;
  if (widthLoopLarger == true) loopHeightRatio = loopSmallerDimension / loopLargerDimension; 
  if (heightLoopLarger == true) loopWidthRatio = loopLargerDimension / loopLargerDimension;
  if (heightLoopLarger == true) loopHeightRatio = loopSmallerDimension / loopLargerDimension; 
  //
  //
  xPButton = appWidth*3.23/4;
  yPButton = appHeight*17/20;
  widthPButton = appWidth*.65/20;
  heightPButton = appHeight*1.1/20;
  //
  xPlay = appWidth*3.2/4;
  yPlay = appHeight*17/20;
  widthPlay = appWidth*1/20; 
  heightPlay = appHeight*1.5/20;
  //
  xPause = appWidth*3.2/4;
  yPause = appHeight*17.25/20;
  widthPause = appWidth*1/20; 
  heightPause = appHeight*1/20;
  //
  xRewind = appWidth*3/4;
  yRewind = appHeight*17.25/20;
  widthRewind = appWidth*1/20; 
  heightRewind = appHeight*1/20;
  //
  xNext = appWidth*3.6/4;
  yNext = appHeight*17.25/20;
  widthNext = appWidth*1/20; 
  heightNext = appHeight*1/20;
  //
  xForward = appWidth*3.4/4;
  yForward = appHeight*17.25/20;
  widthForward = appWidth*1/20; 
  heightForward = appHeight*1/20;
  //
  xLast = appWidth*2.8/4;
  yLast = appHeight*17.25/20;
  widthLast = appWidth*1/20; 
  heightLast = appHeight*1/20;
  //
  xLoop = appWidth*3.23/4;
  yLoop = appHeight*18/20;
  widthLoop = appWidth*.75/20; 
  heightLoop = appHeight*1/20;
  //
}
void musicButtonsDraw () {
  //
  stroke (#C1C1C1);
  fill (#C1C1C1);
  rect (xPButton, yPButton, widthPButton, heightPButton);
  stroke (#000000);
  if (pauseON==true) image (play, xPlay, yPlay, widthPlay, heightPlay);
  if (pauseON==false) image ( pause, xPause, yPause, widthPause, heightPause);
  image ( rewind, xRewind, yRewind, widthRewind, heightRewind);
  image ( forward, xForward, yForward, widthForward, heightForward);
  image ( next, xNext, yNext, widthNext, heightNext);
  image ( last, xLast, yLast, widthLast, heightLast);
  image ( loop, xLoop, yLoop, widthLoop, heightLoop);
}
