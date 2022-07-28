String eraserText="Eraser";
String brushButtonText="Brush";
String paperButtonText="Canvas";
String brush1Text="/";
String quitText="X";
String xSText="XS", sText="S", mText="M", lText="L", xLText="XL";
String canvasText1 = "#FFFFFF (double click)", canvasText2 = "#DEBD7B (double click)", canvasText3 = "#000000 (double click)";
String songTitle="Glass - Anno Domini Beats";
String template="Pages";
String noPages="Clear";

void texts () {
   size(900, 700);//Landscape (Portrait or Sqaure)
  //
fill(0,0,0);
  textFont (buttonFont, 18);
  textAlign (CENTER, CENTER);
  text (quitText, xQuit, yQuit, widthQuit, heightQuit);
  text (template,xtempButton, ytempButton, widthTempButton, heightTempButton); 
  text (noPages, xNoPage, yNoPage, widthNoPage, heightNoPage);
  text (paperButtonText, xPaperButton, yPaperButton, widthPaperButton, heightPaperButton);
  //textAlign (CENTER,TOP);
  text (brushButtonText, xBrushButton, yBrushButton, widthBrushButton, heightBrushButton);
  if (buttonON==true) {
  text (eraserText, xEraser, yEraser, widthEraser, heightEraser);
  text (xSText, xXS, yXS, widthXS, heightXS);
  text (sText, xS, yS, widthS, heightS);
  text (mText, xM, yM, widthM, heightM);
  text (lText, xL, yL, widthL, heightL);
  text (xLText, xXL, yXL, widthXL, heightXL);
  textFont (buttonFont, 44);
  text (brush1Text, xBrushType1, yBrushType1, widthBrushType1, heightBrushType1);
  textFont (buttonFont, 10);
  
  //
  text (redText1, xRed1, yRed1, widthRed1, heightRed1); 
  text (redText2, xRed2, yRed2, widthRed2, heightRed2); 
  text (redText3, xRed3, yRed3, widthRed3, heightRed3); 
  text (redText4, xRed4, yRed4, widthRed4, heightRed4); 
  text (redText5, xRed5, yRed5, widthRed5, heightRed5);
  //
  text (orangeText1, xOrange1, yOrange1, widthOrange1, heightOrange1);
  text (orangeText2, xOrange2, yOrange2, widthOrange2, heightOrange2);
  text (orangeText3, xOrange3, yOrange3, widthOrange3, heightOrange3);
  text (orangeText4, xOrange4, yOrange4, widthOrange4, heightOrange4);
  text (orangeText5, xOrange5, yOrange5, widthOrange5, heightOrange5);
  //
  text (yellowText1, xYellow1, yYellow1, widthYellow1, heightYellow1);
  text (yellowText2, xYellow2, yYellow2, widthYellow2, heightYellow2);
  text (yellowText3, xYellow3, yYellow3, widthYellow3, heightYellow3);
  text (yellowText4, xYellow4, yYellow4, widthYellow4, heightYellow4);
  text (yellowText5, xYellow5, yYellow5, widthYellow5, heightYellow5);
  //
  text (greenText1, xGreen1, yGreen1, widthGreen1, heightGreen1);
  text (greenText2, xGreen2, yGreen2, widthGreen2, heightGreen2);
  text (greenText3, xGreen3, yGreen3, widthGreen3, heightGreen3);
  text (greenText4, xGreen4, yGreen4, widthGreen4, heightGreen4);
  text (greenText5, xGreen5, yGreen5, widthGreen5, heightGreen5);
  //
  text (blueText1, xBlue1, yBlue1, widthBlue1, heightBlue1);
  text (blueText2, xBlue2, yBlue2, widthBlue2, heightBlue2);
  text (blueText3, xBlue3, yBlue3, widthBlue3, heightBlue3);
  text (blueText4, xBlue4, yBlue4, widthBlue4, heightBlue4);
  text (blueText5, xBlue5, yBlue5, widthBlue5, heightBlue5);
  //
  text (purpleText1, xPurple1, yPurple1, widthPurple1, heightPurple1);
  text (purpleText2, xPurple2, yPurple2, widthPurple2, heightPurple2);
  text (purpleText3, xPurple3, yPurple3, widthPurple3, heightPurple3);
  text (purpleText4, xPurple4, yPurple4, widthPurple4, heightPurple4);
  text (purpleText5, xPurple5, yPurple5, widthPurple5, heightPurple5);
  //
  text (brownText1, xBrown1, yBrown1, widthBrown1, heightBrown1);
  text (brownText2, xBrown2, yBrown2, widthBrown2, heightBrown2);
  text (brownText3, xBrown3, yBrown3, widthBrown3, heightBrown3);
  text (brownText4, xBrown4, yBrown4, widthBrown4, heightBrown4);
  text (brownText5, xBrown5, yBrown5, widthBrown5, heightBrown5);
  //
  text (shadeText4, xShade4, yShade4, widthShade4, heightShade4);
  text (shadeText5, xShade5, yShade5, widthShade5, heightShade5);
  fill(#FFFFFF);
  text (shadeText1, xShade1, yShade1, widthShade1, heightShade1);
  text (shadeText2, xShade2, yShade2, widthShade2, heightShade2);
  text (shadeText3, xShade3, yShade3, widthShade3, heightShade3);
  }
  if (pButtonON==true) {
  textFont (buttonFont, 10);
  fill(#000000);
  text (canvasText1, xCanvasFill1, yCanvasFill1, widthCanvasFill1, heightCanvasFill1);
  text (canvasText2, xCanvasFill2, yCanvasFill2, widthCanvasFill2, heightCanvasFill2); 
  fill(#FFFFFF);
  text (canvasText3, xCanvasFill3, yCanvasFill3, widthCanvasFill3, heightCanvasFill3);
  }
  fill (#000000);
  textFont (buttonFont, 22);
  textAlign (CENTER,TOP);
  text (songTitle, xMusicMenu, yMusicMenu, widthMusicMenu, heightMusicMenu);
  fill (#FFFFFF);
}
 
