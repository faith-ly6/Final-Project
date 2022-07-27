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


   size(900, 700);//Landscape (Portrait or Sqaure)
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
  //
  if ( song1.isLooping() && song1.loopCount()!=-1 ) println("There are", song1.loopCount(), "loops left.");
  if ( song1.isLooping() && song1.loopCount()==-1 ) println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
  println("Song position", song1.position(), "Song Length", song1.length() ); //Amount of time left is a calculation
  println( "Song Length (in milliseconds): ", songMetaData1.length() );
  println( "Song Length (in seconds): ", songMetaData1.length()/1000 );
  println( "Song Length (in minutes & seconds): ", (songMetaData1.length()/1000)/60, " minute", (songMetaData1.length()/1000)-((songMetaData1.length()/1000)/60 * 60), " seconds" );
  println( "Song Title: ", songMetaData1.title() );
}
void mouseMusic () {
    //
  if (mouseX>= xPButton && mouseX<= xPButton + widthPButton && mouseY>= yPButton && mouseY<= yPButton + heightPButton) {
    if (pauseON==false) {
      pauseON=true; 
      playON=false;
    } else {
      pauseON=false; 
      playON=true;
    }
  }
  if (mouseX>= xPButton && mouseX<= xPButton + widthPButton && mouseY>= yPButton && mouseY<= yPButton + heightPButton) {
    if (pauseON==false) {
      if ( song1.isPlaying() ) {
        song1.pause();
      } else if ( song1.position() >= song1.length() - song1.length()*1/5 ) {
        song1.rewind();
        song1.play();
      } else {
        song1.play();
      }
    }
  }
  if (mouseX>= xPButton && mouseX<= xPButton + widthPButton && mouseY>= yPButton && mouseY<= yPButton + heightPButton) {
    if (pauseON==true) {
      if ( song1.isPlaying() ) {
        song1.pause();
      } else if ( song1.position() >= song1.length() - song1.length()*1/5 ) {
        song1.rewind();
        song1.play();
      } else {
        song1.play();
      }
    }
  }
  if (mouseX>= xRewind && mouseX<= xRewind + widthRewind && mouseY>= yRewind && mouseY<= yRewind + heightRewind) {
    if (song1.isPlaying()) {
      song1.skip(-5000);
    } else {
      song2.skip(-5000);
    }
  }
  if (mouseX>= xForward && mouseX<= xForward + widthForward && mouseY>= yForward && mouseY<= yForward + heightForward) {
    if (song1.isPlaying()) {
      song1.skip(5000);
    } else {
      song2.skip(-5000);
    }
  }
  if (mouseX>= xLast && mouseX<= xLast + widthLast && mouseY>= yLast && mouseY<= yLast + heightLast) {
    if (song1.isPlaying()) {
      song1.skip(-10000);
    } else {
      song2.skip(-10000);
    }
  }
  if (mouseX>= xNext && mouseX<= xNext + widthNext && mouseY>= yNext && mouseY<= yNext + heightNext) {
    if (song1.isPlaying()) {
      song1.skip(10000);
    } else {
      song2.skip(-10000);
    }
  }
  if (mouseX>= xLoop && mouseX<= xLoop + widthLoop&& mouseY>= yLoop && mouseY<= yLoop + heightLoop) {
    if (song1.isPlaying()) song1.loop();
  }
}
