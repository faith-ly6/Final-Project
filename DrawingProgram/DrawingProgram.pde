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
float xDrawingSurfaceBr, yDrawingSurfaceBr, widthDrawingSurfaceBr, heightDrawingSurfaceBr; 
float xDrawingSurfaceB, yDrawingSurfaceB, widthDrawingSurfaceB, heightDrawingSurfaceB; 
float xNoPage, yNoPage, widthNoPage, heightNoPage;
float xDrawingSurface, yDrawingSurface, widthDrawingSurface, heightDrawingSurface; 
float xDrawingSurface1, yDrawingSurface1, widthDrawingSurface1, heightDrawingSurface1; 
float xDrawingSurface2, yDrawingSurface2, widthDrawingSurface2, heightDrawingSurface2; 
float xDrawingSurface3, yDrawingSurface3, widthDrawingSurface3, heightDrawingSurface3; 
float diameterDrawing, diameterDrawingL, diameterDrawingXL, widthBrush, heightBrush;
float xBrushMenu, yBrushMenu, widthBrushMenu, heightBrushMenu;
float xEraser, yEraser, widthEraser, heightEraser;
float xQuit, yQuit, widthQuit, heightQuit;
int lineWeight = 1;
color  lineFill=#D33C3C, lineStroke=#D33C3C;
//
color quitFill=#FFFFFF, eraserFill=#FFFFFF;
color brushButtonFill=#C1C1C1, canvasButtonFill=#C1C1C1, tempButtonFill=#C1C1C1;
color canvasF2=#DEBD7B, canvasF1=#FFFFFF, canvasF3=#000000, canvasFill;
color xSButtonFill, sButtonFill, mButtonFill, lButtonFill, xLButtonFill, noPageFill= #C1C1C1;
color type1Fill=#FFFFFF, type2Fill=#FFFFFF, type3Fill=#FFFFFF;
//
PImage temp1, temp2, temp3;
PFont buttonFont;
//

//
Boolean draw = false, lineON=true, ellipseON=false, rectON=false, eraserON=false, ellipseLON=false, ellipseXLON=false; 
Boolean playON=false, pauseON=true; 
Boolean temp1ON=false, temp2ON=false, temp3ON=false;
Boolean buttonON=false, pButtonON=false, tButtonON=false, drawingON=false;
Boolean image1=false, image2=false, image3=false;
Boolean surfaceBrown=false, surfaceBlack=false;
Boolean canvasFill1=true, canvasFill2=false, canvasFill3=false;
//
void setup () {
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(900, 700);//Landscape (Portrait or Sqaure)
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
  

  xBrushType1 = appWidth*5/8;
  yBrushType1 = appHeight*4/20;
  widthBrushType1 = appWidth*(1.66/3)/6;
  heightBrushType1 = appHeight*1/1/11;
  //
  xBrushType2 = appWidth*5.75/8;
  yBrushType2 = appHeight*4/20;
  widthBrushType2 = appWidth*(1.66/3)/6;
  heightBrushType2 = appHeight*1/1/11;
  //
  xBrush2 = appWidth*6.1/8;
  yBrush2 = appHeight*5/20;
  diatmeterBrush2 = appHeight*1/30;
  //
  xBrushType3 = appWidth*6.47/8;
  yBrushType3 = appHeight*4/20;
  widthBrushType3 = appWidth*(1.65/3)/6;
  heightBrushType3 = appHeight*1/11;
  //
  xBrush3 = appWidth*6.7/8;
  yBrush3 = appHeight*4.6/20;
  widthBrush3 = appWidth*1/30;
  heightBrush3 = appHeight*1/30;
  //
  xEraser = appWidth*5/8;
  yEraser = appHeight*5.8/20; 
  widthEraser = appWidth*1.65/6;
  heightEraser = appHeight*1/20;
  //
  xXS = appWidth*5/8;
  yXS = appHeight*6.80/20;
  widthXS = appWidth*(1.65/5)/6;
  heightXS = appHeight*1/20;
  //
  xS = appWidth*5.43/8;
  yS = appHeight*6.80/20;
  widthS = appWidth*(1.65/5)/6;
  heightS = appHeight*1/20;
  //
  xM = appWidth*5.86/8;
  yM = appHeight*6.80/20;
  widthM = appWidth*(1.65/5)/6;
  heightM = appHeight*1/20;
  //
  xL = appWidth*6.30/8;
  yL = appHeight*6.80/20;
  widthL = appWidth*(1.65/5)/6;
  heightL = appHeight*1/20;
  //
  xXL = appWidth*6.75/8;
  yXL = appHeight*6.80/20;
  widthXL = appWidth*(1.65/5)/6;
  heightXL = appHeight*1/20;
  //
  xRed1 = appWidth*5/8;
  yRed1 = appHeight*7.8/20;
  widthRed1 = appWidth*(1.65/5)/6;
  heightRed1 = appHeight*1/20;
  //
  xRed2 = appWidth*5.43/8;
  yRed2 = appHeight*7.8/20;
  widthRed2 = appWidth*(1.65/5)/6;
  heightRed2 = appHeight*1/20;
  //
  xRed3 = appWidth*5.86/8;
  yRed3 = appHeight*7.8/20;
  widthRed3 = appWidth*(1.65/5)/6;
  heightRed3 = appHeight*1/20;
  //
  xRed4 = appWidth*6.3/8;
  yRed4 = appHeight*7.8/20;
  widthRed4 = appWidth*(1.65/5)/6;
  heightRed4 = appHeight*1/20;
  //
  xRed5 = appWidth*6.75/8;
  yRed5 = appHeight*7.8/20;
  widthRed5 = appWidth*(1.65/5)/6;
  heightRed5 = appHeight*1/20;
  //
  xOrange1 = appWidth*5/8;
  yOrange1 = appHeight*8.8/20; 
  widthOrange1 = appWidth*(1.65/5)/6;
  heightOrange1 = appHeight*1/20;
  //
  xOrange2 = appWidth*5.43/8;
  yOrange2 = appHeight*8.8/20; 
  widthOrange2 = appWidth*(1.65/5)/6;
  heightOrange2 = appHeight*1/20;
  //
  xOrange3 = appWidth*5.86/8;
  yOrange3 = appHeight*8.8/20; 
  widthOrange3 = appWidth*(1.65/5)/6;
  heightOrange3 = appHeight*1/20;
  //
  xOrange4 = appWidth*6.3/8;
  yOrange4 = appHeight*8.8/20; 
  widthOrange4 = appWidth*(1.65/5)/6;
  heightOrange4 = appHeight*1/20;
  //
  xOrange5 = appWidth*6.75/8;
  yOrange5 = appHeight*8.8/20; 
  widthOrange5 = appWidth*(1.65/5)/6;
  heightOrange5 = appHeight*1/20;
  //
  xYellow1 = appWidth*5/8;
  yYellow1 = appHeight*9.8/20; 
  widthYellow1 = appWidth*(1.65/5)/6;
  heightYellow1 = appHeight*1/20;
  //
  xYellow2 = appWidth*5.43/8;
  yYellow2 = appHeight*9.8/20; 
  widthYellow2 = appWidth*(1.65/5)/6;
  heightYellow2 = appHeight*1/20;
  //
  xYellow3 = appWidth*5.86/8;
  yYellow3 = appHeight*9.8/20; 
  widthYellow3 = appWidth*(1.65/5)/6;
  heightYellow3 = appHeight*1/20;
  //
  xYellow4 = appWidth*6.3/8;
  yYellow4 = appHeight*9.8/20; 
  widthYellow4 = appWidth*(1.65/5)/6;
  heightYellow4 = appHeight*1/20;
  //
  xYellow5 = appWidth*6.75/8;
  yYellow5 = appHeight*9.8/20; 
  widthYellow5 = appWidth*(1.65/5)/6;
  heightYellow5 = appHeight*1/20;
  //
  xGreen1 = appWidth*5/8;
  yGreen1 = appHeight*10.8/20; 
  widthGreen1 = appWidth*(1.65/5)/6;
  heightGreen1 = appHeight*1/20;
  //
  xGreen2 = appWidth*5.43/8;
  yGreen2 = appHeight*10.8/20; 
  widthGreen2 = appWidth*(1.65/5)/6;
  heightGreen2 = appHeight*1/20;
  //
  xGreen3 = appWidth*5.86/8;
  yGreen3 = appHeight*10.8/20; 
  widthGreen3 = appWidth*(1.65/5)/6;
  heightGreen3 = appHeight*1/20;
  //
  xGreen4 = appWidth*6.3/8;
  yGreen4 = appHeight*10.8/20; 
  widthGreen4 = appWidth*(1.65/5)/6;
  heightGreen4 = appHeight*1/20;
  //
  xGreen5 = appWidth*6.75/8;
  yGreen5 = appHeight*10.8/20; 
  widthGreen5 = appWidth*(1.65/5)/6;
  heightGreen5 = appHeight*1/20;
  //
  xBlue1 = appWidth*5/8;
  yBlue1 = appHeight*11.8/20; 
  widthBlue1 = appWidth*(1.65/5)/6;
  heightBlue1 = appHeight*1/20;
  //
  xBlue2 = appWidth*5.43/8;
  yBlue2 = appHeight*11.8/20; 
  widthBlue2 = appWidth*(1.65/5)/6;
  heightBlue2 = appHeight*1/20;
  //
  xBlue3 = appWidth*5.86/8;
  yBlue3 = appHeight*11.8/20; 
  widthBlue3 = appWidth*(1.65/5)/6;
  heightBlue3 = appHeight*1/20;
  //
  xBlue4 = appWidth*6.3/8;
  yBlue4 = appHeight*11.8/20; 
  widthBlue4 = appWidth*(1.65/5)/6;
  heightBlue4 = appHeight*1/20;
  //
  xBlue5 = appWidth*6.75/8;
  yBlue5 = appHeight*11.8/20; 
  widthBlue5 = appWidth*(1.65/5)/6;
  heightBlue5 = appHeight*1/20;
  //
  xPurple1 = appWidth*5/8;
  yPurple1 = appHeight*12.8/20; 
  widthPurple1 = appWidth*(1.65/5)/6;
  heightPurple1 = appHeight*1/20;
  //
  xPurple2 = appWidth*5.43/8;
  yPurple2 = appHeight*12.8/20; 
  widthPurple2 = appWidth*(1.65/5)/6;
  heightPurple2 = appHeight*1/20;
  //
  xPurple3 = appWidth*5.86/8;
  yPurple3 = appHeight*12.8/20; 
  widthPurple3 = appWidth*(1.65/5)/6;
  heightPurple3 = appHeight*1/20;
  //
  xPurple4 = appWidth*6.3/8;
  yPurple4 = appHeight*12.8/20; 
  widthPurple4 = appWidth*(1.65/5)/6;
  heightPurple4 = appHeight*1/20;
  //
  xPurple5 = appWidth*6.75/8;
  yPurple5 = appHeight*12.8/20; 
  widthPurple5 = appWidth*(1.65/5)/6;
  heightPurple5 = appHeight*1/20;
  //
  xBrown1 = appWidth*5/8;
  yBrown1 = appHeight*13.8/20; 
  widthBrown1 = appWidth*(1.65/5)/6;
  heightBrown1 = appHeight*1/20;
  //
  xBrown1 = appWidth*5/8;
  yBrown1 = appHeight*13.8/20; 
  widthBrown1 = appWidth*(1.65/5)/6;
  heightBrown1 = appHeight*1/20;
  //
  xBrown2 = appWidth*5.43/8;
  yBrown2 = appHeight*13.8/20; 
  widthBrown2 = appWidth*(1.65/5)/6;
  heightBrown2 = appHeight*1/20;
  //
  xBrown3 = appWidth*5.86/8;
  yBrown3 = appHeight*13.8/20; 
  widthBrown3 = appWidth*(1.65/5)/6;
  heightBrown3 = appHeight*1/20;
  //
  xBrown4 = appWidth*6.3/8;
  yBrown4 = appHeight*13.8/20; 
  widthBrown4 = appWidth*(1.65/5)/6;
  heightBrown4 = appHeight*1/20;
  //
  xBrown5 = appWidth*6.75/8;
  yBrown5 = appHeight*13.8/20; 
  widthBrown5 = appWidth*(1.65/5)/6;
  heightBrown5 = appHeight*1/20;
  //
  xShade1 = appWidth*5/8;
  yShade1 = appHeight*14.8/20; 
  widthShade1 = appWidth*(1.65/5)/6;
  heightShade1 = appHeight*1/20;
  //
  xShade2 = appWidth*5.43/8;
  yShade2 = appHeight*14.8/20; 
  widthShade2 = appWidth*(1.65/5)/6;
  heightShade2 = appHeight*1/20;
  //
  xShade3 = appWidth*5.86/8;
  yShade3 = appHeight*14.8/20; 
  widthShade3 = appWidth*(1.65/5)/6;
  heightShade3 = appHeight*1/20;
  //
  xShade4 = appWidth*6.3/8;
  yShade4 = appHeight*14.8/20; 
  widthShade4 = appWidth*(1.65/5)/6;
  heightShade4 = appHeight*1/20;
  //
  xShade5 = appWidth*6.75/8;
  yShade5 = appHeight*14.8/20; 
  widthShade5 = appWidth*(1.65/5)/6;
  heightShade5 = appHeight*1/20;
  //

  widthDrawingSurface = appWidth*2.5/4; 
  heightDrawingSurface = appHeight*1;
  diameterDrawing = appWidth*1/100;
  diameterDrawingL = appWidth*1.3/100;
  diameterDrawingXL = appWidth*2.3/100;
  widthBrush = appWidth*1/100;
  heightBrush = appHeight*1/100;
  //
  widthDrawingSurface1 = appWidth*2.5/4; 
  heightDrawingSurface1 = appHeight*1;
  widthDrawingSurface2 = appWidth*2.5/4; 
  heightDrawingSurface2 = appHeight*1;
  widthDrawingSurface3 = appWidth*2.5/4; 
  heightDrawingSurface3 = appHeight*1;
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
  xNoPage = appWidth*7.2/8;
  yNoPage = appHeight*0/20;
  widthNoPage = appWidth*1/10;
  heightNoPage = appHeight*1/20;
  //
  xTemp1 = appWidth*5/8;
  yTemp1 = appHeight*0/20;
  widthTemp1 = appWidth*(1.65/3)/6; 
  heightTemp1 = appHeight*2/20;
  //
  xTemp1C = appWidth*0/8;
  yTemp1C = appHeight*0/20;
  widthTemp1C = appWidth*2.5/4; 
  heightTemp1C = appHeight*1;
  //
  xTemp2 = appWidth*5.74/8;
  yTemp2 = appHeight*0/20;
  widthTemp2 = appWidth*(1.65/3)/6; 
  heightTemp2 = appHeight*2/20;
  //
  xTemp2C = appWidth*0/8;
  yTemp2C = appHeight*0/20;
  widthTemp2C = appWidth*2.5/4; 
  heightTemp2C = appHeight*1;
  //
  xTemp3 = appWidth*6.46/8;
  yTemp3 = appHeight*0/20;
  widthTemp3 = appWidth*(1.65/3)/6; 
  heightTemp3 = appHeight*2/20;
  //
  xTemp3C = appWidth*0/8;
  yTemp3C = appHeight*0/20;
  widthTemp3C = appWidth*2.5/4; 
  heightTemp3C = appHeight*1;
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
  xBrushMenu = appWidth*5/8;
  yBrushMenu = appHeight*0/20; 
  widthBrushMenu = appWidth*1.65/6;
  heightBrushMenu = appHeight*4.75/6;
  //
  rect(xDrawingSurface, yDrawingSurface, widthDrawingSurface, heightDrawingSurface);

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
 
  fill (canvasFill);
  if (canvasFill1==true) {canvasFill=canvasF1;}
  if (canvasFill2==true) {canvasFill=canvasF2;}
  if (canvasFill3==true) {canvasFill=canvasF3;}
  if (temp1ON==true && image1==true) {
    rect(xDrawingSurface1, yDrawingSurface1, widthDrawingSurface1, heightDrawingSurface1); 
    image1=false;
  }
  
  if (temp2ON==true && image2==true) {
    rect(xDrawingSurface2, yDrawingSurface2, widthDrawingSurface2, heightDrawingSurface2); 
    image2=false;
  }
  
  if (temp3ON==true && image3==true) {
    rect(xDrawingSurface3, yDrawingSurface3, widthDrawingSurface3, heightDrawingSurface3); 
    image3=false;
  }
  
  if (drawingON==true) {
    rect(xDrawingSurface, yDrawingSurface, widthDrawingSurface, heightDrawingSurface); 
    drawingON=false;
  }
  //
  drawingTool();
  //
  fill (#FFFFFF);
  stroke (#000000);
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
  fill (noPageFill);
  rect (xNoPage, yNoPage, widthNoPage, heightNoPage);
  //
  fill (#C1C1C1);
  rect (xBrushMenu, yBrushMenu, widthBrushMenu, heightBrushMenu);
  rect (xMusicMenu, yMusicMenu, widthMusicMenu, heightMusicMenu);
  //
  if (pButtonON==true) {
    fill(canvasF1);
    rect (xCanvasFill1, yCanvasFill1, widthCanvasFill1, heightCanvasFill1);
    fill(#DEBD7B);
    rect (xCanvasFill2, yCanvasFill2, widthCanvasFill2, heightCanvasFill2);
    fill(canvasF3);
    rect (xCanvasFill3, yCanvasFill3, widthCanvasFill3, heightCanvasFill3);
  }
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

  if (mouseX>=xEraser && mouseX<=xEraser+widthEraser && mouseY>=yEraser && mouseY<=yEraser+heightEraser) {
    eraserFill=#E0DEDE;
  } else {
    eraserFill=#FFFFFF;
  }
  if (mouseX>= xNoPage && mouseX<= xNoPage + widthNoPage && mouseY>= yNoPage && mouseY<= yNoPage + heightNoPage) {
    noPageFill= #E0DEDE;
  } else {
    noPageFill= #C1C1C1;
  }
  //End Hover-Over

   if (eraserON==true) {
    eraserFill=#B4B0A0;
    lineFill=canvasFill;
    lineStroke=canvasFill;
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
  if (mouseX>= xNoPage && mouseX<= xNoPage + widthNoPage && mouseY>= yNoPage && mouseY<= yNoPage + heightNoPage) {
    temp1ON=false; 
    image1=false;
    temp2ON=false;
    image2=false;
    temp3ON=false;
    image3=false;
    drawingON=true;
  }
  if (mouseX>= xTemp1&& mouseX<= xTemp1+ widthTemp1&& mouseY>= yTemp1 && mouseY<= yTemp1+ heightTemp1) {
    if (temp1ON==false) {
      temp1ON=true; 
      image1=true;
      temp2ON=false;
      image2=false;
      temp3ON=false;
      image3=false;
      drawingON=false;
      
    }
  } 
  if (mouseX>= xTemp2&& mouseX<= xTemp2+ widthTemp2&& mouseY>= yTemp2 && mouseY<= yTemp2+ heightTemp2) {
    if (temp2ON==false) {
      temp1ON=false; 
      image1=false;
      temp2ON=true;
      image2=true;
      temp3ON=false;
      image3=false;
      drawingON=false;
     
    }
  } 
  if (mouseX>= xTemp3&& mouseX<= xTemp3+ widthTemp3&& mouseY>= yTemp3 && mouseY<= yTemp3+ heightTemp3) {
    if (temp3ON==false) {
      temp1ON=false; 
      image1=false;
      temp2ON=false;
      image2=false;
      temp3ON=true;
      image3=true;
      drawingON=false;
   
    }
  } 
  mouseMusic ();
  
  if (mouseX>=xBrushButton && mouseX<= xBrushButton+ widthBrushButton&& mouseY>= yBrushButton && mouseY<= yBrushButton + heightBrushButton ) {
    if (buttonON==false) {
      buttonON=true;
    } else {
      buttonON=false;
    }
  }
  if (mouseX>= xPaperButton && mouseX<= xPaperButton + widthPaperButton && mouseY>= yPaperButton&& mouseY<= yPaperButton+ heightPaperButton) {
    if (pButtonON==false) {
      pButtonON=true;
    } else {
      pButtonON=false;
    }
  } 
  if (mouseX>= xtempButton&& mouseX<= xtempButton+ widthTempButton&& mouseY>= ytempButton&& mouseY<= ytempButton + heightTempButton) {
    if (tButtonON==false) {
      tButtonON=true;
    } else {
      tButtonON=false;
    }
  } 

  if (mouseX>= xCanvasFill1 && mouseX<= xCanvasFill1 + widthCanvasFill1 && mouseY>= yCanvasFill1 && mouseY<= yCanvasFill1 + heightCanvasFill1 ) {
    drawingON=true;
    canvasFill1=true;
    canvasFill2=false;
    canvasFill3=false;
  }
  if (mouseX>= xCanvasFill2 && mouseX<= xCanvasFill2 + widthCanvasFill2 && mouseY>= yCanvasFill2 && mouseY<= yCanvasFill2 + heightCanvasFill2 ) {
    drawingON=true;
    canvasFill1=false;
    canvasFill2=true;
    canvasFill3=false;
  }
  if (mouseX>= xCanvasFill3 && mouseX<= xCanvasFill3 + widthCanvasFill3 && mouseY>= yCanvasFill3 && mouseY<= yCanvasFill3 + heightCanvasFill3 ) { 
    drawingON=true;
    canvasFill3=true;
    canvasFill2=false;
    canvasFill1=false;
  } 
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
  
  //
}//End mousePressed
//
//End MAIN Program
