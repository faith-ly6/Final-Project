import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1, song2;
AudioMetaData songMetaData1, songMetaData2;
//
float xPButton, yPButton, widthPButton, heightPButton;
float xMusicMenu, yMusicMenu, widthMusicMenu, heightMusicMenu;
float xPaperButton, yPaperButton, widthPaperButton, heightPaperButton;
float xBrushButton, yBrushButton, widthBrushButton, heightBrushButton;
float xtempButton, ytempButton, widthTempButton, heightTempButton;
float xCanvasFill1, yCanvasFill1, widthCanvasFill1, heightCanvasFill1;
float xCanvasFill2, yCanvasFill2, widthCanvasFill2, heightCanvasFill2;
float xCanvasFill3, yCanvasFill3, widthCanvasFill3, heightCanvasFill3;
float xDrawingSurface, yDrawingSurface, widthDrawingSurface, heightDrawingSurface, diameterDrawing, widthBrush, heightBrush;
float xBrushMenu, yBrushMenu, widthBrushMenu, heightBrushMenu;
float xEraser, yEraser, widthEraser, heightEraser;
float xQuit, yQuit, widthQuit, heightQuit;
int lineWeight = 1;

//
color quitFill=#FFFFFF, lineFill, eraserFill=#FFFFFF, lineStroke=#C424FF;
color canvasFill2=#DEBD7B, canvasFill1=#FFFFFF, canvasFill3=#000000, canvasFill=#FFFFFF, brushButtonFill=#C1C1C1, canvasButtonFill=#C1C1C1, tempButtonFill=#C1C1C1;
//
PImage temp1, temp2, temp3;
PFont buttonFont;
//

//
boolean draw = false, lineON=true, ellipseON=false, rectON=false, eraserON=false, playON=false, pauseON=true, temp1ON=false, temp2ON=false, temp3ON=false, buttonON=true, pButtonON=false, tButtonON=false;
//
void setup () {
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
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
  //
  minim = new Minim(this);
  song1 = minim.loadFile("../audio/Glass - Anno Domini Beats.mp3");
  songMetaData1 = song1.getMetaData();
 
  templates();
  //
  xPaperButton = appWidth*7.2/8;
  yPaperButton = appHeight*2/20;
  widthPaperButton = appWidth*1/10;
  heightPaperButton = appHeight*1.1/11;
  //
  //xCanvasMenu = appWidth*5.00/8;
  //yCanvasMenu = appHeight*2/20;
  //widthCanvasMenu = appWidth*1.66/6;
  //heightCanvasMenu = appHeight*1.1/11;
  //
  xCanvasFill1 = appWidth*5/8;
  yCanvasFill1 = appHeight*2/20;
  widthCanvasFill1 = appWidth*(1.65/3)/6; 
  heightCanvasFill1 = appHeight*1.1/11;
  //
  xCanvasFill2 = appWidth*5.74/8;
  yCanvasFill2 = appHeight*2/20;
  widthCanvasFill2 = appWidth*(1.66/3)/6; 
  heightCanvasFill2 = appHeight*1.1/11;
  //
  xCanvasFill3 = appWidth*6.46/8;
  yCanvasFill3 = appHeight*2/20;
  widthCanvasFill3 = appWidth*(1.65/3)/6; 
  heightCanvasFill3 = appHeight*1.1/11;
  //
  xBrushButton = appWidth*7.2/8;
  yBrushButton = appHeight*4/20;
  widthBrushButton = appWidth*1/10;
  heightBrushButton = appHeight*4.75/6;
  //
  xBrushMenu = appWidth*5/8;
  yBrushMenu = appHeight*0/20; 
  widthBrushMenu = appWidth*1.65/6;
  heightBrushMenu = appHeight*4.75/6;
  //
  moreButtons();
  //
  widthDrawingSurface = appWidth*2.5/4; 
  heightDrawingSurface = appHeight*1;
  diameterDrawing = appWidth*1/100;
  widthBrush = appWidth*1/100;
  heightBrush = appHeight*1/100;
  //
  xPButton = appWidth*3.23/4;
  yPButton = appHeight*17/20;
  widthPButton = appWidth*.65/20;
  heightPButton = appHeight*1.1/20;
  //
  xMusicMenu = appWidth*5/8;
  yMusicMenu = appHeight*4.75/6;
  widthMusicMenu = appWidth*3/8; 
  heightMusicMenu = appHeight*1.25/6;
  //
  xtempButton = appWidth*7.2/8;
  ytempButton = appHeight*1/20;
  widthTempButton = appWidth*1/10;
  heightTempButton = appHeight*1/20;
  //
  fill(canvasFill);
  rect(xDrawingSurface, yDrawingSurface, widthDrawingSurface, heightDrawingSurface);
  //
  xQuit = appWidth*19/20;
  yQuit = appHeight*0/20;
  widthQuit = appWidth*1/20; 
  heightQuit = appHeight*1/20;
  //
   musicButtons();
   //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Verdana", 10); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  textAlign (CENTER, CENTER);
  textFont (buttonFont, 18);
  
}//End setup
//
void draw () {
  if ( song1.isLooping() && song1.loopCount()!=-1 ) println("There are", song1.loopCount(), "loops left.");
  if ( song1.isLooping() && song1.loopCount()==-1 ) println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
  println("Song position", song1.position(), "Song Length", song1.length() ); //Amount of time left is a calculation
  
  //
  fill(lineFill);
  stroke(lineStroke);
  strokeWeight(lineWeight);
  if (lineON==true) {if (draw == true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) line(mouseX, mouseY, pmouseX, pmouseY);}
  if (ellipseON==true) {if (draw == true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) ellipse(mouseX, mouseY, diameterDrawing, diameterDrawing);}
  if (rectON==true) {if (draw == true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) rect(mouseX, mouseY, widthBrush, heightBrush);}
  stroke(#000000);
  strokeWeight (1);
  //
  fill (brushButtonFill);
  rect (xBrushButton, yBrushButton, widthBrushButton, heightBrushButton);
  //
  fill(canvasButtonFill);
  rect(xPaperButton, yPaperButton, widthPaperButton, heightPaperButton);
  //
  fill (tempButtonFill);
  rect (xtempButton, ytempButton, widthTempButton, heightTempButton);
  //
  fill (#C1C1C1);
  rect (xBrushMenu, yBrushMenu, widthBrushMenu, heightBrushMenu);
  rect (xMusicMenu, yMusicMenu, widthMusicMenu, heightMusicMenu);
  
  //
  stroke (#C1C1C1);
  rect (xPButton, yPButton, widthPButton, heightPButton);
  stroke (#000000);
  //
  fill(canvasFill1);
  rect (xCanvasFill1, yCanvasFill1, widthCanvasFill1, heightCanvasFill1);
  fill(#DEBD7B);
  rect (xCanvasFill2, yCanvasFill2, widthCanvasFill2, heightCanvasFill2);
  fill(canvasFill3);
  rect (xCanvasFill3, yCanvasFill3, widthCanvasFill3, heightCanvasFill3);
  //
  if (pauseON==true) image (play, xPlay, yPlay, widthPlay, heightPlay);
  if (pauseON==false) image ( pause, xPause, yPause, widthPause, heightPause);
  image ( rewind, xRewind, yRewind, widthRewind, heightRewind);
  image ( forward, xForward, yForward, widthForward, heightForward);
  image ( next, xNext, yNext, widthNext, heightNext);
  image ( last, xLast, yLast, widthLast, heightLast);
  image ( loop, xLoop, yLoop, widthLoop, heightLoop);
  //
  image(temp1, xTemp1, yTemp1, widthTemp1, heightTemp1);
  image(temp2, xTemp2, yTemp2, widthTemp2, heightTemp2);
  image(temp3, xTemp3, yTemp3, widthTemp3, heightTemp3);
  if (temp1ON==true) image(temp1, xTemp1C, yTemp1C, widthTemp1C, heightTemp1C);
  if (temp2ON==true) image(temp2, xTemp2C, yTemp2C, widthTemp2C, heightTemp2C);
  if (temp3ON==true) image(temp3, xTemp3C, yTemp3C, widthTemp3C, heightTemp3C);
  //
  
  //rect(xCanvasMenu, yCanvasMenu, widthCanvasMenu, heightCanvasMenu);
 moreButtonDraw();
  fill(quitFill);
  rect(xQuit, yQuit, widthQuit, heightQuit);
  //
  
  //Hover-over
  if (mouseX> xQuit && mouseX< xQuit+widthQuit && mouseY>yQuit && mouseY<yQuit+heightQuit) {
    quitFill = #FF0000;
  } else {
    quitFill = #FFFFFF;
  }
  if (mouseX>=xBrushButton && mouseX<= xBrushButton+ widthBrushButton&& mouseY>= yBrushButton && mouseY<= yBrushButton + heightBrushButton ) {
    brushButtonFill= #E0DEDE;
  } else {
    brushButtonFill=#C1C1C1; 
  }
  if (mouseX>= xPaperButton && mouseX<= xPaperButton + widthPaperButton && mouseY>= yPaperButton&& mouseY<= yPaperButton+ heightPaperButton) { 
    canvasButtonFill= #E0DEDE;
  } else {
    canvasButtonFill= #C1C1C1;
  }
  if (mouseX>= xtempButton&& mouseX<= xtempButton+ widthTempButton&& mouseY>= ytempButton&& mouseY<= ytempButton + heightTempButton) {
   tempButtonFill= #E0DEDE; 
  } else {
   tempButtonFill= #C1C1C1; 
  }
  //End Hover-Over
  
  if (eraserON==true) {
       eraserFill=#B4B0A0;
      lineFill=#FFFFFF;
      lineStroke=#FFFFFF;
    } else {
      eraserFill=#FFFFFF;
      lineFill=#000000;
      lineStroke=#000000;
    }
  //
  texts();
  //  
}//End draw
//
void keyPressed () {
}//End keyPressed
//
void mousePressed () {
  //if (mouseX>= && mouseX<= + && mouseY>= && mouseY<= + ) {} 
  if (mouseX>= xTemp1&& mouseX<= xTemp1+ widthTemp1&& mouseY>= yTemp1 && mouseY<= yTemp1+ heightTemp1) {if (temp1ON==false) {temp1ON=true; temp2ON=false; temp3ON=false;}} 
  if (mouseX>= xTemp2&& mouseX<= xTemp2+ widthTemp2&& mouseY>= yTemp2 && mouseY<= yTemp2+ heightTemp2) {if (temp2ON==false) {temp1ON=false; temp2ON=true; temp3ON=false;}} 
  if (mouseX>= xTemp3&& mouseX<= xTemp3+ widthTemp3&& mouseY>= yTemp3 && mouseY<= yTemp3+ heightTemp3) {if (temp3ON==false) {temp1ON=false; temp2ON=false; temp3ON=true;}} 
  //
  if (mouseX>= xPButton && mouseX<= xPButton + widthPButton && mouseY>= yPButton && mouseY<= yPButton + heightPButton) {if (pauseON==false) {pauseON=true; playON=false;} else {pauseON=false; playON=true;}}
  if (mouseX>= xPButton && mouseX<= xPButton + widthPButton && mouseY>= yPButton && mouseY<= yPButton + heightPButton) {if (pauseON==false) {if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length() - song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  }
  if (mouseX>= xPButton && mouseX<= xPButton + widthPButton && mouseY>= yPButton && mouseY<= yPButton + heightPButton) {if (pauseON==true) {if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length() - song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  }
  if (mouseX>= xRewind && mouseX<= xRewind + widthRewind && mouseY>= yRewind && mouseY<= yRewind + heightRewind) {if (song1.isPlaying()) {song1.skip(-10000);} else {song2.skip(-10000);}}
  if (mouseX>= xForward && mouseX<= xForward + widthForward && mouseY>= yForward && mouseY<= yForward + heightForward) {if (song1.isPlaying()) {song1.skip(10000);} else {song2.skip(-10000);}}
  if (mouseX>= xLoop && mouseX<= xLoop + widthLoop&& mouseY>= yLoop && mouseY<= yLoop + heightLoop) {if (song1.isPlaying()) song1.loop();} //else { song2.loop();} 
  
  if (mouseX>=xBrushButton && mouseX<= xBrushButton+ widthBrushButton&& mouseY>= yBrushButton && mouseY<= yBrushButton + heightBrushButton ) {if(buttonON==false) {buttonON=true;} else {buttonON=false;}}
  if (mouseX>= xPaperButton && mouseX<= xPaperButton + widthPaperButton && mouseY>= yPaperButton&& mouseY<= yPaperButton+ heightPaperButton) {if(pButtonON==false) {pButtonON=true;} else {pButtonON=false;}} 
  if (mouseX>= xtempButton&& mouseX<= xtempButton+ widthTempButton&& mouseY>= ytempButton&& mouseY<= ytempButton + heightTempButton) {if (tButtonON==false) {tButtonON=true;} else {tButtonON=false;}} 
 
  if (mouseX>= xCanvasFill1 && mouseX<= xCanvasFill1 + widthCanvasFill1 && mouseY>= yCanvasFill1 && mouseY<= yCanvasFill1 + heightCanvasFill1 ) {canvasFill=canvasFill1;} 
  if (mouseX>= xCanvasFill2 && mouseX<= xCanvasFill2 + widthCanvasFill2 && mouseY>= yCanvasFill2 && mouseY<= yCanvasFill2 + heightCanvasFill2 ) {canvasFill=canvasFill2;}
  if (mouseX>= xCanvasFill3 && mouseX<= xCanvasFill3 + widthCanvasFill3 && mouseY>= yCanvasFill3 && mouseY<= yCanvasFill3 + heightCanvasFill3 ) {canvasFill=canvasFill3;} 
   
  if (mouseX>= xBrushType1 && mouseX<=xBrushType1+widthBrushType1 && mouseY>= yBrushType1 && mouseY<=yBrushType1+heightBrushType1 ) {lineON=true; ellipseON=false; rectON=false;}
  if (mouseX>= xBrushType2 && mouseX<=xBrushType2+widthBrushType2 && mouseY>= yBrushType2 && mouseY<=yBrushType2+heightBrushType2 ) {lineON=false; ellipseON=true; rectON=false;}
  if (mouseX>= xBrushType3 && mouseX<=xBrushType3+widthBrushType3 && mouseY>= yBrushType3 && mouseY<=yBrushType3+heightBrushType3 ) {lineON=false; ellipseON=false; rectON=true;}
  if (mouseX>=xXS && mouseX<=xXS+widthXS && mouseY>=yXS && mouseY<= yXS +heightXS) {lineWeight= 1;}
  if (mouseX>=xS && mouseX<=xS+widthS && mouseY>=yS && mouseY<= yS +heightS) {lineWeight= 5;}
  if (mouseX>=xM && mouseX<=xM+widthM && mouseY>=yM && mouseY<= yM +heightM){lineWeight= 10;}
  if (mouseX>=xL && mouseX<=xL+widthL && mouseY>=yL && mouseY<= yL +heightL) {lineWeight= 20;}
  if (mouseX>=xXL && mouseX<=xXL+widthXL && mouseY>=yXL && mouseY<= yXL +heightXL) {lineWeight= 30;}
  //
  if (mouseX>= xRed1 && mouseX<= xRed1 + widthRed1 && mouseY>= yRed1 && mouseY<= yRed1 + heightRed1) {lineStroke= red1; lineFill= red1;}
  if (mouseX>= xRed2 && mouseX<= xRed2 + widthRed2 && mouseY>= yRed2 && mouseY<= yRed2 + heightRed2) {lineStroke= red2; lineFill= red2;}
  if (mouseX>= xRed3 && mouseX<= xRed3 + widthRed3 && mouseY>= yRed3 && mouseY<= yRed3 + heightRed3) {lineStroke= red3; lineFill= red3;}
  if (mouseX>= xRed4 && mouseX<= xRed4 + widthRed4 && mouseY>= yRed4 && mouseY<= yRed4 + heightRed4) {lineStroke= red4; lineFill= red4;}
  if (mouseX>= xRed5 && mouseX<= xRed5 + widthRed5 && mouseY>= yRed5 && mouseY<= yRed5 + heightRed5) {lineStroke= red5; lineFill= red5;}
  
  if (mouseX>= xOrange1 && mouseX<= xOrange1 + widthOrange1 && mouseY>= yOrange1 && mouseY<= yOrange1 + heightOrange1) {lineStroke=orange1; lineFill=orange1;}
  if (mouseX>= xOrange2 && mouseX<= xOrange2 + widthOrange2 && mouseY>= yOrange2 && mouseY<= yOrange2 + heightOrange2) {lineStroke=orange2; lineFill=orange2;} 
  if (mouseX>= xOrange3 && mouseX<= xOrange3 + widthOrange3 && mouseY>= yOrange3 && mouseY<= yOrange3 + heightOrange3) {lineStroke=orange3; lineFill=orange3;}
  if (mouseX>= xOrange4 && mouseX<= xOrange4 + widthOrange4 && mouseY>= yOrange4 && mouseY<= yOrange4 + heightOrange4) {lineStroke=orange4; lineFill=orange4;}
  if (mouseX>= xOrange5 && mouseX<= xOrange5 + widthOrange5 && mouseY>= yOrange5 && mouseY<= yOrange5 + heightOrange5) {lineStroke=orange5; lineFill=orange5;}
  
  if (mouseX>= xYellow1 && mouseX<= xYellow1 + widthYellow1 && mouseY>= yYellow1 && mouseY<= yYellow1 + heightYellow1) {lineStroke=yellow1; lineFill=yellow1;}
  if (mouseX>= xYellow2 && mouseX<= xYellow2 + widthYellow2 && mouseY>= yYellow2 && mouseY<= yYellow2 + heightYellow2) {lineStroke=yellow2; lineFill=yellow2;}
  if (mouseX>= xYellow3 && mouseX<= xYellow3 + widthYellow3 && mouseY>= yYellow3 && mouseY<= yYellow3 + heightYellow3) {lineStroke=yellow3; lineFill=yellow3;}
  if (mouseX>= xYellow4 && mouseX<= xYellow4 + widthYellow4 && mouseY>= yYellow4 && mouseY<= yYellow4 + heightYellow4) {lineStroke=yellow4; lineFill=yellow4;}
  if (mouseX>= xYellow5 && mouseX<= xYellow5 + widthYellow5 && mouseY>= yYellow5 && mouseY<= yYellow5 + heightYellow5) {lineStroke=yellow5; lineFill=yellow5;}
  
  if (mouseX>= xGreen1 && mouseX<= xGreen1 + widthGreen1 && mouseY>= yGreen1 && mouseY<= yGreen1 + heightGreen1) {lineStroke=green1; lineFill=green1;}
  if (mouseX>= xGreen2 && mouseX<= xGreen2 + widthGreen2 && mouseY>= yGreen2 && mouseY<= yGreen2 + heightGreen2) {lineStroke=green2; lineFill=green2;}
  if (mouseX>= xGreen3 && mouseX<= xGreen3 + widthGreen3 && mouseY>= yGreen3 && mouseY<= yGreen3 + heightGreen3) {lineStroke=green3; lineFill=green3;}
  if (mouseX>= xGreen4 && mouseX<= xGreen4 + widthGreen4 && mouseY>= yGreen4 && mouseY<= yGreen4 + heightGreen4) {lineStroke=green4; lineFill=green4;}
  if (mouseX>= xGreen5 && mouseX<= xGreen5 + widthGreen5 && mouseY>= yGreen5 && mouseY<= yGreen5 + heightGreen5) {lineStroke=green5; lineFill=green5;}
  
  if (mouseX>= xBlue1 && mouseX<= xBlue1 + widthBlue1 && mouseY>= yBlue1 && mouseY<= yBlue1 + heightBlue1) {lineStroke=blue1; lineFill=blue1;}
  if (mouseX>= xBlue2 && mouseX<= xBlue2 + widthBlue2 && mouseY>= yBlue2 && mouseY<= yBlue2 + heightBlue2) {lineStroke=blue2; lineFill=blue2;}
  if (mouseX>= xBlue3 && mouseX<= xBlue3 + widthBlue3 && mouseY>= yBlue3 && mouseY<= yBlue3 + heightBlue3) {lineStroke=blue3; lineFill=blue3;}
  if (mouseX>= xBlue4 && mouseX<= xBlue4 + widthBlue4 && mouseY>= yBlue4 && mouseY<= yBlue4 + heightBlue4) {lineStroke=blue4; lineFill=blue4;}
  if (mouseX>= xBlue5 && mouseX<= xBlue5 + widthBlue5 && mouseY>= yBlue5 && mouseY<= yBlue5 + heightBlue5) {lineStroke=blue5; lineFill=blue5;}
  
  if (mouseX>= xPurple1 && mouseX<= xPurple1 + widthPurple1 && mouseY>= yPurple1 && mouseY<= yPurple1 + heightPurple1) {lineStroke=purple1; lineFill=purple1;}
  if (mouseX>= xPurple2 && mouseX<= xPurple2 + widthPurple2 && mouseY>= yPurple2 && mouseY<= yPurple2 + heightPurple2) {lineStroke=purple2; lineFill=purple2;}
  if (mouseX>= xPurple3 && mouseX<= xPurple3 + widthPurple3 && mouseY>= yPurple3 && mouseY<= yPurple3 + heightPurple3) {lineStroke=purple3; lineFill=purple3;}
  if (mouseX>= xPurple4 && mouseX<= xPurple4 + widthPurple4 && mouseY>= yPurple4 && mouseY<= yPurple4 + heightPurple4) {lineStroke=purple4; lineFill=purple4;}
  if (mouseX>= xPurple5 && mouseX<= xPurple5 + widthPurple5 && mouseY>= yPurple5 && mouseY<= yPurple5 + heightPurple5) {lineStroke=purple5; lineFill=purple5;}
  
  if (mouseX>= xBrown1 && mouseX<= xBrown1 + widthBrown1 && mouseY>= yBrown1 && mouseY<= yBrown1 + heightBrown1) {lineStroke=brown1; lineFill=brown1;}
  if (mouseX>= xBrown2 && mouseX<= xBrown2 + widthBrown2 && mouseY>= yBrown2 && mouseY<= yBrown2 + heightBrown2) {lineStroke=brown2; lineFill=brown2;}
  if (mouseX>= xBrown3 && mouseX<= xBrown3 + widthBrown3 && mouseY>= yBrown3 && mouseY<= yBrown3 + heightBrown3) {lineStroke=brown3; lineFill=brown3;}
  if (mouseX>= xBrown4 && mouseX<= xBrown4 + widthBrown4 && mouseY>= yBrown4 && mouseY<= yBrown4 + heightBrown4) {lineStroke=brown4; lineFill=brown4;}
  if (mouseX>= xBrown5 && mouseX<= xBrown5 + widthBrown5 && mouseY>= yBrown5 && mouseY<= yBrown5 + heightBrown5) {lineStroke=brown5; lineFill=brown5;}
  
  if (mouseX>= xShade1 && mouseX<= xShade1 + widthShade1 && mouseY>= yShade1 && mouseY<= yShade1 + heightShade1) {lineStroke=shade1; lineFill=shade1;}
  if (mouseX>= xShade2 && mouseX<= xShade2 + widthShade2 && mouseY>= yShade2 && mouseY<= yShade2 + heightShade2) {lineStroke=shade2; lineFill=shade2;}
  if (mouseX>= xShade3 && mouseX<= xShade3 + widthShade3 && mouseY>= yShade3 && mouseY<= yShade3 + heightShade3) {lineStroke=shade3; lineFill=shade3;}
  if (mouseX>= xShade4 && mouseX<= xShade4 + widthShade4 && mouseY>= yShade4 && mouseY<= yShade4 + heightShade4) {lineStroke=shade4; lineFill=shade4;}
  if (mouseX>= xShade5 && mouseX<= xShade5 + widthShade5 && mouseY>= yShade5 && mouseY<= yShade5 + heightShade5) {lineStroke=shade5; lineFill=shade5;}
  
  if (mouseX>=xEraser && mouseX<=xEraser+widthEraser && mouseY>=yEraser && mouseY<=yEraser+heightEraser) {if(eraserON==false) {eraserON=true;} else {eraserON=false;}}
  if (mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) {
    if ( draw ==true ) {
      draw = false;
    } else {
    draw=true;
    }
  }
  if (mouseX> xQuit && mouseX< xQuit+widthQuit && mouseY>yQuit && mouseY<yQuit+heightQuit) exit();
 //
}//End mousePressed
//
//End MAIN Program
