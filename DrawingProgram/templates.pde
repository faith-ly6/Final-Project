float xTemp1, yTemp1, widthTemp1, heightTemp1;
float temp1LargerDimension, temp1SmallerDimension;
float temp1WidthAdjusted, temp1WidthRatio=0.0, temp1HeightRatio=0.0, temp1HeightAdjusted;
Boolean widthTemp1Larger=false, heightTemp1Larger=false;
float xTemp1C, yTemp1C, widthTemp1C, heightTemp1C;
float temp1CLargerDimension, temp1CSmallerDimension;
float temp1CWidthAdjusted, temp1CWidthRatio=0.0, temp1CHeightRatio=0.0, temp1CHeightAdjusted;
Boolean widthTemp1CLarger=false, heightTemp1CLarger=false;
//
float xTemp2, yTemp2, widthTemp2, heightTemp2;
float temp2LargerDimension, temp2SmallerDimension;
float temp2WidthAdjusted, temp2WidthRatio=0.0, temp2HeightRatio=0.0, temp2HeightAdjusted;
Boolean widthTemp2Larger=false, heightTemp2Larger=false;
float xTemp2C, yTemp2C, widthTemp2C, heightTemp2C;
float temp2CLargerDimension, temp2CSmallerDimension;
float temp2CWidthAdjusted, temp2CWidthRatio=0.0, temp2CHeightRatio=0.0, temp2CHeightAdjusted;
Boolean widthTemp2CLarger=false, heightTemp2CLarger=false;
//
float xTemp3, yTemp3, widthTemp3, heightTemp3;
float temp3LargerDimension, temp3SmallerDimension;
float temp3WidthAdjusted, temp3WidthRatio=0.0, temp3HeightRatio=0.0, temp3HeightAdjusted;
Boolean widthTemp3Larger=false, heightTemp3Larger=false;
float xTemp3C, yTemp3C, widthTemp3C, heightTemp3C;
float temp3CLargerDimension, temp3CSmallerDimension;
float temp3CWidthAdjusted, temp3CWidthRatio=0.0, temp3CHeightRatio=0.0, temp3CHeightAdjusted;
Boolean widthTemp3CLarger=false, heightTemp3CLarger=false;

void templates() {
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
  temp1 = loadImage("../images/temp1.png");//Dimensions width 481, height 519
  int temp1Width = 481;
  int temp1Height = 519;
  if (temp1Width>=temp1Height) {
  temp1LargerDimension = temp1Width;
  temp1SmallerDimension = temp1Height;
  widthTemp1Larger = true;
  } else {
  temp1LargerDimension = temp1Width;
  temp1SmallerDimension = temp1Height;
  heightTemp1Larger = true;
  }
  if (widthTemp1Larger == true) temp1WidthRatio = temp1LargerDimension / temp1LargerDimension;
  if (widthTemp1Larger == true) temp1HeightRatio = temp1SmallerDimension / temp1LargerDimension; 
  if (heightTemp1Larger == true) temp1WidthRatio = temp1LargerDimension / temp1LargerDimension;
  if (heightTemp1Larger == true) temp1HeightRatio = temp1SmallerDimension / temp1LargerDimension; 
  //
  temp1 = loadImage("../images/temp1.png");//Dimensions width 481, height 519
  int temp1CWidth = 481;
  int temp1CHeight = 519;
  if (temp1CWidth>=temp1CHeight) {
  temp1CLargerDimension = temp1CWidth;
  temp1CSmallerDimension = temp1CHeight;
  widthTemp1Larger = true;
  } else {
  temp1CLargerDimension = temp1CWidth;
  temp1CSmallerDimension = temp1CHeight;
  heightTemp1CLarger = true;
  }
  if (widthTemp1CLarger == true) temp1CWidthRatio = temp1CLargerDimension / temp1CLargerDimension;
  if (widthTemp1CLarger == true) temp1CHeightRatio = temp1CSmallerDimension / temp1CLargerDimension; 
  if (heightTemp1CLarger == true) temp1CWidthRatio = temp1CLargerDimension / temp1CLargerDimension;
  if (heightTemp1CLarger == true) temp1CHeightRatio = temp1CSmallerDimension / temp1CLargerDimension; 
  //
  temp2 = loadImage("../images/temp2.png");//Dimensions width 481, height 519
  int temp2Width = 481;
  int temp2Height = 519;
  if (temp2Width>=temp2Height) {
  temp2LargerDimension = temp2Width;
  temp2SmallerDimension = temp2Height;
  widthTemp2Larger = true;
  } else {
  temp2LargerDimension = temp2Width;
  temp2SmallerDimension = temp2Height;
  heightTemp2Larger = true;
  }
  if (widthTemp2Larger == true) temp2WidthRatio = temp2LargerDimension / temp2LargerDimension;
  if (widthTemp2Larger == true) temp2HeightRatio = temp2SmallerDimension / temp2LargerDimension; 
  if (heightTemp2Larger == true) temp2WidthRatio = temp2LargerDimension / temp2LargerDimension;
  if (heightTemp2Larger == true) temp2HeightRatio = temp2SmallerDimension / temp2LargerDimension; 
  //
  //
  temp2 = loadImage("../images/temp2.png");//Dimensions width 481, height 519
  int temp2CWidth = 481;
  int temp2CHeight = 519;
  if (temp2CWidth>=temp2CHeight) {
  temp2CLargerDimension = temp2CWidth;
  temp2CSmallerDimension = temp2CHeight;
  widthTemp2Larger = true;
  } else {
  temp2CLargerDimension = temp2CWidth;
  temp2CSmallerDimension = temp2CHeight;
  heightTemp2CLarger = true;
  }
  if (widthTemp2CLarger == true) temp2CWidthRatio = temp2CLargerDimension / temp2CLargerDimension;
  if (widthTemp2CLarger == true) temp2CHeightRatio = temp2CSmallerDimension / temp2CLargerDimension; 
  if (heightTemp2CLarger == true) temp2CWidthRatio = temp2CLargerDimension / temp2CLargerDimension;
  if (heightTemp2CLarger == true) temp2CHeightRatio = temp2CSmallerDimension / temp2CLargerDimension; 
  //
  temp3 = loadImage("../images/temp3.png");//Dimensions width 481, height 519
  int temp3Width = 481;
  int temp3Height = 519;
  if (temp3Width>=temp3Height) {
  temp3LargerDimension = temp3Width;
  temp3SmallerDimension = temp3Height;
  widthTemp3Larger = true;
  } else {
  temp3LargerDimension = temp3Width;
  temp3SmallerDimension = temp3Height;
  heightTemp3Larger = true;
  }
  if (widthTemp3Larger == true) temp3WidthRatio = temp3LargerDimension / temp3LargerDimension;
  if (widthTemp3Larger == true) temp3HeightRatio = temp3SmallerDimension / temp3LargerDimension; 
  if (heightTemp3Larger == true) temp3WidthRatio = temp3LargerDimension / temp3LargerDimension;
  if (heightTemp3Larger == true) temp3HeightRatio = temp3SmallerDimension / temp3LargerDimension; 
  //
  //
  temp3 = loadImage("../images/temp3.png");//Dimensions width 481, height 519
  int temp3CWidth = 481;
  int temp3CHeight = 519;
  if (temp3CWidth>=temp3CHeight) {
  temp3CLargerDimension = temp3CWidth;
  temp3CSmallerDimension = temp3CHeight;
  widthTemp3Larger = true;
  } else {
  temp3CLargerDimension = temp3CWidth;
  temp3CSmallerDimension = temp3CHeight;
  heightTemp3CLarger = true;
  }
  if (widthTemp3CLarger == true) temp3CWidthRatio = temp3CLargerDimension / temp3CLargerDimension;
  if (widthTemp3CLarger == true) temp3CHeightRatio = temp3CSmallerDimension / temp3CLargerDimension; 
  if (heightTemp3CLarger == true) temp3CWidthRatio = temp3CLargerDimension / temp3CLargerDimension;
  if (heightTemp3CLarger == true) temp3CHeightRatio = temp3CSmallerDimension / temp3CLargerDimension; 
  //
  //Population
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
}
void templatesDraw () {
   image(temp1, xTemp1, yTemp1, widthTemp1, heightTemp1);
  image(temp2, xTemp2, yTemp2, widthTemp2, heightTemp2);
  image(temp3, xTemp3, yTemp3, widthTemp3, heightTemp3);
  if (temp1ON==true) image(temp1, xTemp1C, yTemp1C, widthTemp1C, heightTemp1C);
  if (temp2ON==true) image(temp2, xTemp2C, yTemp2C, widthTemp2C, heightTemp2C);
  if (temp3ON==true) image(temp3, xTemp3C, yTemp3C, widthTemp3C, heightTemp3C);
}
