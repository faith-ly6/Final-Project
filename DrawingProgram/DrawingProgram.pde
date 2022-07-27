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
Boolean draw = false, lineON=true, ellipseON=false, rectON=false, eraserON=false; 
Boolean playON=false, pauseON=true; 
Boolean temp1ON=false, temp2ON=false, temp3ON=false;
Boolean buttonON=true, pButtonON=false, tButtonON=false;
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
  brushButtons();
  //
  widthDrawingSurface = appWidth*2.5/4; 
  heightDrawingSurface = appHeight*1;
  diameterDrawing = appWidth*1/100;
  widthBrush = appWidth*1/100;
  heightBrush = appHeight*1/100;
  //
  xMusicMenu = appWidth*5/8;
  yMusicMenu = appHeight*4.75/6;
  widthMusicMenu = appWidth*3/8; 
  heightMusicMenu = appHeight*1.25/6;
  //
  xtempButton = appWidth*7.2/8;
  ytempButton = appHeight*0/20;
  widthTempButton = appWidth*1/10;
  heightTempButton = appHeight*2/20;
  //
  fill(canvasFill);
  rect(xDrawingSurface, yDrawingSurface, widthDrawingSurface, heightDrawingSurface);
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
  fill(canvasFill1);
  rect (xCanvasFill1, yCanvasFill1, widthCanvasFill1, heightCanvasFill1);
  fill(#DEBD7B);
  rect (xCanvasFill2, yCanvasFill2, widthCanvasFill2, heightCanvasFill2);
  fill(canvasFill3);
  rect (xCanvasFill3, yCanvasFill3, widthCanvasFill3, heightCanvasFill3);
  //
  musicButtonsDraw();
  //
 templatesDraw();
  //
 brushButtonDraw();
  
  //
  
  //Hover-over
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
  if (key=='q' || key=='Q') exit();
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
  if (mouseX>= xRewind && mouseX<= xRewind + widthRewind && mouseY>= yRewind && mouseY<= yRewind + heightRewind) {if (song1.isPlaying()) {song1.skip(-5000);} else {song2.skip(-5000);}}
  if (mouseX>= xForward && mouseX<= xForward + widthForward && mouseY>= yForward && mouseY<= yForward + heightForward) {if (song1.isPlaying()) {song1.skip(5000);} else {song2.skip(-5000);}}
  if (mouseX>= xLast && mouseX<= xLast + widthLast && mouseY>= yLast && mouseY<= yLast + heightLast) {if (song1.isPlaying()) {song1.skip(-10000);} else {song2.skip(-10000);}}
  if (mouseX>= xNext && mouseX<= xNext + widthNext && mouseY>= yNext && mouseY<= yNext + heightNext) {if (song1.isPlaying()) {song1.skip(10000);} else {song2.skip(-10000);}}
  if (mouseX>= xLoop && mouseX<= xLoop + widthLoop&& mouseY>= yLoop && mouseY<= yLoop + heightLoop) {if (song1.isPlaying()) song1.loop();}
  
  if (mouseX>=xBrushButton && mouseX<= xBrushButton+ widthBrushButton&& mouseY>= yBrushButton && mouseY<= yBrushButton + heightBrushButton ) {if(buttonON==false) {buttonON=true;} else {buttonON=false;}}
  if (mouseX>= xPaperButton && mouseX<= xPaperButton + widthPaperButton && mouseY>= yPaperButton&& mouseY<= yPaperButton+ heightPaperButton) {if(pButtonON==false) {pButtonON=true;} else {pButtonON=false;}} 
  if (mouseX>= xtempButton&& mouseX<= xtempButton+ widthTempButton&& mouseY>= ytempButton&& mouseY<= ytempButton + heightTempButton) {if (tButtonON==false) {tButtonON=true;} else {tButtonON=false;}} 
 
  if (mouseX>= xCanvasFill1 && mouseX<= xCanvasFill1 + widthCanvasFill1 && mouseY>= yCanvasFill1 && mouseY<= yCanvasFill1 + heightCanvasFill1 ) {canvasFill=canvasFill1;} 
  if (mouseX>= xCanvasFill2 && mouseX<= xCanvasFill2 + widthCanvasFill2 && mouseY>= yCanvasFill2 && mouseY<= yCanvasFill2 + heightCanvasFill2 ) {canvasFill=canvasFill2;}
  if (mouseX>= xCanvasFill3 && mouseX<= xCanvasFill3 + widthCanvasFill3 && mouseY>= yCanvasFill3 && mouseY<= yCanvasFill3 + heightCanvasFill3 ) {canvasFill=canvasFill3;} 
  //
  brushButtonsMouse();
  //
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
