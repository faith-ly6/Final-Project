import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
float xDrawingSurface, yDrawingSurface, widthDrawingSurface, heightDrawingSurface, diameterDrawing;
boolean draw = false;
float xQuit, yQuit, widthQuit, heightQuit;
color buttonFill=#FFFFFF;
String quitText="X";
PFont buttonFont;
//
void setup () {
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(600,500);//Landscape (Portrait or Sqaure)
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
  //Population
  xDrawingSurface = appWidth*0;
  yDrawingSurface = appHeight*0;
  widthDrawingSurface = appWidth*3/4; 
  heightDrawingSurface = appHeight*1;
  diameterDrawing = appWidth*1/200;
  //
  rect(xDrawingSurface, yDrawingSurface, widthDrawingSurface, heightDrawingSurface);
  //
  xQuit = appWidth*19/20;
  yQuit = appHeight*0/20;
  widthQuit = appWidth*1/20; 
  heightQuit = appHeight*1/20;
  //
   //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Verdana", 10); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  fill (#000000); //Ink
  textAlign (CENTER, CENTER);
  textFont (buttonFont, 15);
  
}//End setup
//
void draw () {
  fill(buttonFill);
  rect(xQuit, yQuit, widthQuit, heightQuit);
  
  if (draw == true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) line(mouseX, mouseY, pmouseX, pmouseY);
   //Hover-over
  if (mouseX> xQuit && mouseX< xQuit+widthQuit && mouseY>yQuit && mouseY<yQuit+heightQuit) {
    buttonFill = #FF0000;
  } else {
    buttonFill = #FFFFFF;
  }//End Hover-Over
  fill(0,0,0);
  text (quitText, xQuit, yQuit, widthQuit, heightQuit);
  textAlign (CENTER, CENTER);
  //ellipse(mouseX, mouseY, diameterDrawing, diameterDrawing);//Drawing Tool
  
}//End draw
//
void keyPressed () {
}//End keyPressed
//
void mousePressed () {
  if (mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) {
    if ( draw ==true ) {
      draw = false;
    } else {
    draw=true;
    }
  }
  if (mouseX> xQuit && mouseX< xQuit+widthQuit && mouseY>yQuit && mouseY<yQuit+heightQuit) exit();
}//End mousePressed
//
//End MAIN Program
