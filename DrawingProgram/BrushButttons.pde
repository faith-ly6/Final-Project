float xBrushType1, yBrushType1, widthBrushType1, heightBrushType1;
float xBrushType2, yBrushType2, widthBrushType2, heightBrushType2;
float xBrushType3, yBrushType3, widthBrushType3, heightBrushType3;
float xXS, yXS, widthXS, heightXS;
float xS, yS, widthS, heightS;
float xM, yM, widthM, heightM;
float xL, yL, widthL, heightL;
float xXL, yXL, widthXL, heightXL;
float xBrush2, yBrush2, diatmeterBrush2;
float xBrush3, yBrush3, widthBrush3, heightBrush3;
//
String redText1="#FF0307", redText2="#FF3134", redText3="#FF6467", redText4="#FFA7A9", redText5="#FFDBDC";
color red1=#FF0307, red2=#FF3134, red3=#FF6467, red4=#FFA7A9, red5=#FFDBDC;
float xRed1, yRed1, widthRed1, heightRed1;
float xRed2, yRed2, widthRed2, heightRed2;
float xRed3, yRed3, widthRed3, heightRed3;
float xRed4, yRed4, widthRed4, heightRed4;
float xRed5, yRed5, widthRed5, heightRed5;
//
String orangeText1="#FF9100", orangeText2="#FFA42C", orangeText3="#FFB95D", orangeText4="#FFC981", orangeText5="#FFDEB2";
color orange1=#FF9100, orange2=#FFA42C, orange3=#FFB95D, orange4=#FFC981, orange5=#FFDEB2;
float xOrange1, yOrange1, widthOrange1, heightOrange1;
float xOrange2, yOrange2, widthOrange2, heightOrange2;
float xOrange3, yOrange3, widthOrange3, heightOrange3;
float xOrange4, yOrange4, widthOrange4, heightOrange4;
float xOrange5, yOrange5, widthOrange5, heightOrange5;
//
String yellowText1="#FFF300", yellowText2="#FFF52E", yellowText3="#FFF862", yellowText4="#FFFA95", yellowText5="#FFFCC4"; 
color yellow1=#FFF300, yellow2=#FFF52E, yellow3=#FFF862, yellow4=#FFFA95, yellow5=#FFFCC4;
float xYellow1, yYellow1, widthYellow1, heightYellow1;
float xYellow2, yYellow2, widthYellow2, heightYellow2;
float xYellow3, yYellow3, widthYellow3, heightYellow3;
float xYellow4, yYellow4, widthYellow4, heightYellow4;
float xYellow5, yYellow5, widthYellow5, heightYellow5;
//
String greenText1="#0BFF00", greenText2="#3DFF34", greenText3="#6BFF64", greenText4="#93FF8E", greenText5="#BFFFBC"; 
color green1=#0BFF00, green2=#3DFF34, green3=#6BFF64, green4=#93FF8E, green5=#BFFFBC;
float xGreen1, yGreen1, widthGreen1, heightGreen1;
float xGreen2, yGreen2, widthGreen2, heightGreen2;
float xGreen3, yGreen3, widthGreen3, heightGreen3;
float xGreen4, yGreen4, widthGreen4, heightGreen4;
float xGreen5, yGreen5, widthGreen5, heightGreen5;
//
String blueText1="#000AFF", blueText2="#434AFF", blueText3="#6A6FFF", blueText4="#9397FF", blueText5="#BFC1FF";
color blue1=#000AFF, blue2=#434AFF, blue3=#6A6FFF, blue4=#9397FF, blue5=#BFC1FF;
float xBlue1, yBlue1, widthBlue1, heightBlue1;
float xBlue2, yBlue2, widthBlue2, heightBlue2;
float xBlue3, yBlue3, widthBlue3, heightBlue3;
float xBlue4, yBlue4, widthBlue4, heightBlue4;
float xBlue5, yBlue5, widthBlue5, heightBlue5;
//
String purpleText1="#A900FF", purpleText2="#C424FF", purpleText3="#CC67FF", purpleText4="#DC98FF", purpleText5="#E9BFFF";
color purple1=#A900FF, purple2=#C424FF, purple3=#CC67FF, purple4=#DC98FF, purple5=#E9BFFF;
float xPurple1, yPurple1, widthPurple1, heightPurple1;
float xPurple2, yPurple2, widthPurple2, heightPurple2;
float xPurple3, yPurple3, widthPurple3, heightPurple3;
float xPurple4, yPurple4, widthPurple4, heightPurple4;
float xPurple5, yPurple5, widthPurple5, heightPurple5;
//
String brownText1="#674300", brownText2="#715218", brownText3="#89682C", brownText4="#A08147", brownText5="#BC9D63";
color brown1=#674300, brown2=#715218, brown3=#89682C, brown4=#A08147, brown5=#BC9D63;
float xBrown1, yBrown1, widthBrown1, heightBrown1;
float xBrown2, yBrown2, widthBrown2, heightBrown2;
float xBrown3, yBrown3, widthBrown3, heightBrown3;
float xBrown4, yBrown4, widthBrown4, heightBrown4;
float xBrown5, yBrown5, widthBrown5, heightBrown5;
//
String shadeText1="#000000", shadeText2="#272626", shadeText3="#50504F", shadeText4="#B2B2B2", shadeText5="#FFFFFF";
color shade1=#000000, shade2=#272626, shade3=#50504F, shade4=#B2B2B2, shade5=#FFFFFF;
float xShade1, yShade1, widthShade1, heightShade1;
float xShade2, yShade2, widthShade2, heightShade2;
float xShade3, yShade3, widthShade3, heightShade3;
float xShade4, yShade4, widthShade4, heightShade4;
float xShade5, yShade5, widthShade5, heightShade5;
//

//

void brushButtons() {
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
}

void brushButtonDraw () {

  if (buttonON==true) {
    fill(#FFFFFF);
    rect(xBrushType1, yBrushType1, widthBrushType1, heightBrushType1);
    rect(xBrushType2, yBrushType2, widthBrushType2, heightBrushType2);
    rect(xBrushType3, yBrushType3, widthBrushType3, heightBrushType3);
    fill(eraserFill);
    rect (xEraser, yEraser, widthEraser, heightEraser);
    //
    fill(xSButtonFill);
    rect(xXS, yXS, widthXS, heightXS);
    fill(sButtonFill);
    rect(xS, yS, widthS, heightS);
    fill(mButtonFill);
    rect(xM, yM, widthM, heightM);
    fill(lButtonFill);
    rect(xL, yL, widthL, heightL);
    fill(xLButtonFill);
    rect(xXL, yXL, widthXL, heightXL);
    //
    fill(red1);
    rect(xRed1, yRed1, widthRed1, heightRed1);
    fill(red2);
    rect(xRed2, yRed2, widthRed2, heightRed2);
    fill(red3);
    rect(xRed3, yRed3, widthRed3, heightRed3);
    fill(red4);
    rect(xRed4, yRed4, widthRed4, heightRed4);
    fill(red5);
    rect(xRed5, yRed5, widthRed5, heightRed5);
    //
    fill(orange1);
    rect(xOrange1, yOrange1, widthOrange1, heightOrange1);
    fill(orange2);
    rect(xOrange2, yOrange2, widthOrange2, heightOrange2);
    fill(orange3);
    rect(xOrange3, yOrange3, widthOrange3, heightOrange3);
    fill(orange4);
    rect(xOrange4, yOrange4, widthOrange4, heightOrange4);
    fill(orange5);
    rect(xOrange5, yOrange5, widthOrange5, heightOrange5);
    //
    fill(yellow1);
    rect(xYellow1, yYellow1, widthYellow1, heightYellow1);
    fill(yellow2);
    rect(xYellow2, yYellow2, widthYellow2, heightYellow2);
    fill(yellow3);
    rect(xYellow3, yYellow3, widthYellow3, heightYellow3);
    fill(yellow4);
    rect(xYellow4, yYellow4, widthYellow4, heightYellow4);
    fill(yellow5);
    rect(xYellow5, yYellow5, widthYellow5, heightYellow5);
    //
    fill(green1);
    rect(xGreen1, yGreen1, widthGreen1, heightGreen1);
    fill(green2);
    rect(xGreen2, yGreen2, widthGreen2, heightGreen2);
    fill(green3);
    rect(xGreen3, yGreen3, widthGreen3, heightGreen3);
    fill(green4);
    rect(xGreen4, yGreen4, widthGreen4, heightGreen4);
    fill(green5);
    rect(xGreen5, yGreen5, widthGreen5, heightGreen5);
    //
    fill(blue1);
    rect(xBlue1, yBlue1, widthBlue1, heightBlue1);
    fill(blue2);
    rect(xBlue2, yBlue2, widthBlue2, heightBlue2);
    fill(blue3);
    rect(xBlue3, yBlue3, widthBlue3, heightBlue3);
    fill(blue4);
    rect(xBlue4, yBlue4, widthBlue4, heightBlue4);
    fill(blue5);
    rect(xBlue5, yBlue5, widthBlue5, heightBlue5);
    //
    fill(purple1);
    rect(xPurple1, yPurple1, widthPurple1, heightPurple1);
    fill(purple2);
    rect(xPurple2, yPurple2, widthPurple2, heightPurple2);
    fill(purple3);
    rect(xPurple3, yPurple3, widthPurple3, heightPurple3);
    fill(purple4);
    rect(xPurple4, yPurple4, widthPurple4, heightPurple4);
    fill(purple5);
    rect(xPurple5, yPurple5, widthPurple5, heightPurple5);
    //
    fill(brown1);
    rect(xBrown1, yBrown1, widthBrown1, heightBrown1);
    fill(brown2);
    rect(xBrown2, yBrown2, widthBrown2, heightBrown2);
    fill(brown3);
    rect(xBrown3, yBrown3, widthBrown3, heightBrown3);
    fill(brown4);
    rect(xBrown4, yBrown4, widthBrown4, heightBrown4);
    fill(brown5);
    rect(xBrown5, yBrown5, widthBrown5, heightBrown5);
    //
    fill(shade1);
    rect(xShade1, yShade1, widthShade1, heightShade1);
    fill(shade2);
    rect(xShade2, yShade2, widthShade2, heightShade2);
    fill(shade3);
    rect(xShade3, yShade3, widthShade3, heightShade3);
    fill(shade4);
    rect(xShade4, yShade4, widthShade4, heightShade4);
    fill(shade5);
    rect(xShade5, yShade5, widthShade5, heightShade5);
    //
    fill(#000000);
    ellipse (xBrush2, yBrush2, diatmeterBrush2, diatmeterBrush2);
    rect(xBrush3, yBrush3, widthBrush3, heightBrush3);
  if (mouseX>= xXS && mouseX<= xXS+ widthXS && mouseY>= yXS && mouseY<= yXS + heightXS) {
    xSButtonFill= #E0DEDE;
  } else {
    xSButtonFill= #FFFFFF;
  }
  if (mouseX>= xS && mouseX<= xS+ widthS && mouseY>= yS && mouseY<= yS + heightS) {
    sButtonFill= #E0DEDE;
  } else {
    sButtonFill= #FFFFFF;
  }
  if (mouseX>= xM && mouseX<= xM + widthM && mouseY>= yM && mouseY<= yM + heightM) {
    mButtonFill= #E0DEDE;
  } else {
    mButtonFill= #FFFFFF;
  }
  if (mouseX>= xL && mouseX<= xL+ widthXL && mouseY>= yL && mouseY<= yL + heightL) {
    lButtonFill= #E0DEDE;
  } else {
    lButtonFill= #FFFFFF;
  }
  if (mouseX>= xXL && mouseX<= xXL+ widthXL && mouseY>= yXL && mouseY<= yXL + heightXL) {
    xLButtonFill= #E0DEDE;
  } else {
    xLButtonFill= #FFFFFF;
  }
  
  }
}
void brushButtonsMouse () {
  if (mouseX>= xBrushType1 && mouseX<=xBrushType1+widthBrushType1 && mouseY>= yBrushType1 && mouseY<=yBrushType1+heightBrushType1 ) {
    lineON=true; 
    ellipseON=false; 
    rectON=false;
  }
  if (mouseX>= xBrushType2 && mouseX<=xBrushType2+widthBrushType2 && mouseY>= yBrushType2 && mouseY<=yBrushType2+heightBrushType2 ) {
    lineON=false; 
    ellipseON=true; 
    rectON=false;
  }
  if (mouseX>= xBrushType3 && mouseX<=xBrushType3+widthBrushType3 && mouseY>= yBrushType3 && mouseY<=yBrushType3+heightBrushType3 ) {
    lineON=false; 
    ellipseON=false; 
    rectON=true;
  }
  if (mouseX>=xXS && mouseX<=xXS+widthXS && mouseY>=yXS && mouseY<= yXS +heightXS) {
    lineWeight= 1;
  }
  if (mouseX>=xS && mouseX<=xS+widthS && mouseY>=yS && mouseY<= yS +heightS) {
    lineWeight= 5;
  }
  if (mouseX>=xM && mouseX<=xM+widthM && mouseY>=yM && mouseY<= yM +heightM) {
    lineWeight= 10;
  }
  if (mouseX>=xL && mouseX<=xL+widthL && mouseY>=yL && mouseY<= yL +heightL) {
    lineWeight= 20;
    ellipseLON= true;
  }
  if (mouseX>=xXL && mouseX<=xXL+widthXL && mouseY>=yXL && mouseY<= yXL +heightXL) {
    lineWeight= 40;
    ellipseXLON=true;
  }
  //
  if (mouseX>= xRed1 && mouseX<= xRed1 + widthRed1 && mouseY>= yRed1 && mouseY<= yRed1 + heightRed1) {
    lineStroke= #FF0307; 
    lineFill= #FF0307;
  }
  if (mouseX>= xRed2 && mouseX<= xRed2 + widthRed2 && mouseY>= yRed2 && mouseY<= yRed2 + heightRed2) {
    lineStroke= #FF3134; 
    lineFill= #FF3134;
  }
  if (mouseX>= xRed3 && mouseX<= xRed3 + widthRed3 && mouseY>= yRed3 && mouseY<= yRed3 + heightRed3) {
    lineStroke= #FF6467; 
    lineFill= #FF6467;
  }
  if (mouseX>= xRed4 && mouseX<= xRed4 + widthRed4 && mouseY>= yRed4 && mouseY<= yRed4 + heightRed4) {
    lineStroke= #FFA7A9; 
    lineFill= #FFA7A9;
  }
  if (mouseX>= xRed5 && mouseX<= xRed5 + widthRed5 && mouseY>= yRed5 && mouseY<= yRed5 + heightRed5) {
    lineStroke= #FFDBDC; 
    lineFill= #FFDBDC;
  }

  if (mouseX>= xOrange1 && mouseX<= xOrange1 + widthOrange1 && mouseY>= yOrange1 && mouseY<= yOrange1 + heightOrange1) {
    lineStroke=#FF9100; 
    lineFill=#FF9100;
  }
  if (mouseX>= xOrange2 && mouseX<= xOrange2 + widthOrange2 && mouseY>= yOrange2 && mouseY<= yOrange2 + heightOrange2) {
    lineStroke=#FFA42C; 
    lineFill=#FFA42C;
  } 
  if (mouseX>= xOrange3 && mouseX<= xOrange3 + widthOrange3 && mouseY>= yOrange3 && mouseY<= yOrange3 + heightOrange3) {
    lineStroke=#FFB95D; 
    lineFill=#FFB95D;
  }
  if (mouseX>= xOrange4 && mouseX<= xOrange4 + widthOrange4 && mouseY>= yOrange4 && mouseY<= yOrange4 + heightOrange4) {
    lineStroke=#FFC981; 
    lineFill=#FFC981;
  }
  if (mouseX>= xOrange5 && mouseX<= xOrange5 + widthOrange5 && mouseY>= yOrange5 && mouseY<= yOrange5 + heightOrange5) {
    lineStroke=#FFDEB2; 
    lineFill=#FFDEB2;
  }

  if (mouseX>= xYellow1 && mouseX<= xYellow1 + widthYellow1 && mouseY>= yYellow1 && mouseY<= yYellow1 + heightYellow1) {
    lineStroke=#FFF300; 
    lineFill=#FFF300;
  }
  if (mouseX>= xYellow2 && mouseX<= xYellow2 + widthYellow2 && mouseY>= yYellow2 && mouseY<= yYellow2 + heightYellow2) {
    lineStroke=#FFF52E; 
    lineFill=#FFF52E;
  }
  if (mouseX>= xYellow3 && mouseX<= xYellow3 + widthYellow3 && mouseY>= yYellow3 && mouseY<= yYellow3 + heightYellow3) {
    lineStroke=#FFF862; 
    lineFill=#FFF862;
  }
  if (mouseX>= xYellow4 && mouseX<= xYellow4 + widthYellow4 && mouseY>= yYellow4 && mouseY<= yYellow4 + heightYellow4) {
    lineStroke=#FFFA95; 
    lineFill=#FFFA95;
  }
  if (mouseX>= xYellow5 && mouseX<= xYellow5 + widthYellow5 && mouseY>= yYellow5 && mouseY<= yYellow5 + heightYellow5) {
    lineStroke=#FFFCC4; 
    lineFill=#FFFCC4;
  }

  if (mouseX>= xGreen1 && mouseX<= xGreen1 + widthGreen1 && mouseY>= yGreen1 && mouseY<= yGreen1 + heightGreen1) {
    lineStroke=#0BFF00; 
    lineFill=#0BFF00;
  }
  if (mouseX>= xGreen2 && mouseX<= xGreen2 + widthGreen2 && mouseY>= yGreen2 && mouseY<= yGreen2 + heightGreen2) {
    lineStroke=#3DFF34; 
    lineFill=#3DFF34;
  }
  if (mouseX>= xGreen3 && mouseX<= xGreen3 + widthGreen3 && mouseY>= yGreen3 && mouseY<= yGreen3 + heightGreen3) {
    lineStroke=#6BFF64; 
    lineFill=#6BFF64;
  }
  if (mouseX>= xGreen4 && mouseX<= xGreen4 + widthGreen4 && mouseY>= yGreen4 && mouseY<= yGreen4 + heightGreen4) {
    lineStroke=#93FF8E; 
    lineFill=#93FF8E;
  }
  if (mouseX>= xGreen5 && mouseX<= xGreen5 + widthGreen5 && mouseY>= yGreen5 && mouseY<= yGreen5 + heightGreen5) {
    lineStroke=#BFFFBC; 
    lineFill=#BFFFBC;
  }

  if (mouseX>= xBlue1 && mouseX<= xBlue1 + widthBlue1 && mouseY>= yBlue1 && mouseY<= yBlue1 + heightBlue1) {
    lineStroke=#000AFF; 
    lineFill=#000AFF;
  }
  if (mouseX>= xBlue2 && mouseX<= xBlue2 + widthBlue2 && mouseY>= yBlue2 && mouseY<= yBlue2 + heightBlue2) {
    lineStroke=#434AFF; 
    lineFill=#434AFF;
  }
  if (mouseX>= xBlue3 && mouseX<= xBlue3 + widthBlue3 && mouseY>= yBlue3 && mouseY<= yBlue3 + heightBlue3) {
    lineStroke=#6A6FFF; 
    lineFill=#6A6FFF;
  }
  if (mouseX>= xBlue4 && mouseX<= xBlue4 + widthBlue4 && mouseY>= yBlue4 && mouseY<= yBlue4 + heightBlue4) {
    lineStroke=#9397FF; 
    lineFill=#9397FF;
  }
  if (mouseX>= xBlue5 && mouseX<= xBlue5 + widthBlue5 && mouseY>= yBlue5 && mouseY<= yBlue5 + heightBlue5) {
    lineStroke=#BFC1FF; 
    lineFill=#BFC1FF;
  }

  if (mouseX>= xPurple1 && mouseX<= xPurple1 + widthPurple1 && mouseY>= yPurple1 && mouseY<= yPurple1 + heightPurple1) {
    lineStroke=#A900FF; 
    lineFill=#A900FF;
  }
  if (mouseX>= xPurple2 && mouseX<= xPurple2 + widthPurple2 && mouseY>= yPurple2 && mouseY<= yPurple2 + heightPurple2) {
    lineStroke=#C424FF; 
    lineFill=#C424FF;
  }
  if (mouseX>= xPurple3 && mouseX<= xPurple3 + widthPurple3 && mouseY>= yPurple3 && mouseY<= yPurple3 + heightPurple3) {
    lineStroke=#CC67FF; 
    lineFill=#CC67FF;
  }
  if (mouseX>= xPurple4 && mouseX<= xPurple4 + widthPurple4 && mouseY>= yPurple4 && mouseY<= yPurple4 + heightPurple4) {
    lineStroke=#DC98FF; 
    lineFill=#DC98FF;
  }
  if (mouseX>= xPurple5 && mouseX<= xPurple5 + widthPurple5 && mouseY>= yPurple5 && mouseY<= yPurple5 + heightPurple5) {
    lineStroke=#E9BFFF; 
    lineFill=#E9BFFF;
  }

  if (mouseX>= xBrown1 && mouseX<= xBrown1 + widthBrown1 && mouseY>= yBrown1 && mouseY<= yBrown1 + heightBrown1) {
    lineStroke=#674300; 
    lineFill=#674300;
  }
  if (mouseX>= xBrown2 && mouseX<= xBrown2 + widthBrown2 && mouseY>= yBrown2 && mouseY<= yBrown2 + heightBrown2) {
    lineStroke=#715218; 
    lineFill=#715218;
  }
  if (mouseX>= xBrown3 && mouseX<= xBrown3 + widthBrown3 && mouseY>= yBrown3 && mouseY<= yBrown3 + heightBrown3) {
    lineStroke=#89682C; 
    lineFill=#89682C;
  }
  if (mouseX>= xBrown4 && mouseX<= xBrown4 + widthBrown4 && mouseY>= yBrown4 && mouseY<= yBrown4 + heightBrown4) {
    lineStroke=#A08147; 
    lineFill=#A08147;
  }
  if (mouseX>= xBrown5 && mouseX<= xBrown5 + widthBrown5 && mouseY>= yBrown5 && mouseY<= yBrown5 + heightBrown5) {
    lineStroke=#BC9D63; 
    lineFill=#BC9D63;
  }

  if (mouseX>= xShade1 && mouseX<= xShade1 + widthShade1 && mouseY>= yShade1 && mouseY<= yShade1 + heightShade1) {
    lineStroke=#000000; 
    lineFill=#000000;
  }
  if (mouseX>= xShade2 && mouseX<= xShade2 + widthShade2 && mouseY>= yShade2 && mouseY<= yShade2 + heightShade2) {
    lineStroke=shade2; 
    lineFill=shade2;
  }
  if (mouseX>= xShade3 && mouseX<= xShade3 + widthShade3 && mouseY>= yShade3 && mouseY<= yShade3 + heightShade3) {
    lineStroke=shade3; 
    lineFill=shade3;
  }
  if (mouseX>= xShade4 && mouseX<= xShade4 + widthShade4 && mouseY>= yShade4 && mouseY<= yShade4 + heightShade4) {
    lineStroke=shade4; 
    lineFill=shade4;
  }
  if (mouseX>= xShade5 && mouseX<= xShade5 + widthShade5 && mouseY>= yShade5 && mouseY<= yShade5 + heightShade5) {
    lineStroke=shade5; 
    lineFill=shade5;
  }

  if (mouseX>=xEraser && mouseX<=xEraser+widthEraser && mouseY>=yEraser && mouseY<=yEraser+heightEraser) {
    if (eraserON==false) {
      eraserON=true;
    } else {
      eraserON=false;
    }
  }
}
