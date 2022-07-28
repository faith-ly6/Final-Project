

void drawingTool() {
if (r1==true) {lineStroke=red1; lineFill=red1;}
if (r2==true) {lineStroke=red2; lineFill=red2;}
if (r3==true) {lineStroke=red3; lineFill=red3;}
if (r4==true) {lineStroke=red4; lineFill=red4;}
if (r5==true) {lineStroke=red5; lineFill=red5;}
if (o1==true) {lineStroke=orange1; lineFill=orange1;}
if (o2==true) {lineStroke=orange2; lineFill=orange2;}
if (o3==true) {lineStroke=orange3; lineFill=orange3;}
if (o4==true) {lineStroke=orange4; lineFill=orange4;}
if (o5==true) {lineStroke=orange5; lineFill=orange5;}
if (y1==true) {lineStroke=yellow1; lineFill=yellow1;}
if (y2==true) {lineStroke=yellow2; lineFill=yellow2;}
if (y3==true) {lineStroke=yellow3; lineFill=yellow3;}
if (y4==true) {lineStroke=yellow4; lineFill=yellow4;}
if (y5==true) {lineStroke=yellow5; lineFill=yellow5;}
if (g1==true) {lineStroke=green1; lineFill=green1;}
if (g2==true) {lineStroke=green2; lineFill=green2;}
if (g3==true) {lineStroke=green3; lineFill=green3;}
if (g4==true) {lineStroke=green4; lineFill=green4;}
if (g5==true) {lineStroke=green5; lineFill=green5;}
if (b1==true) {lineStroke=blue1; lineFill=blue1;}
if (b2==true) {lineStroke=blue2; lineFill=blue2;}
if (b3==true) {lineStroke=blue3; lineFill=blue3;}
if (b4==true) {lineStroke=blue4; lineFill=blue4;}
if (b5==true) {lineStroke=blue5; lineFill=blue5;}
if (p1==true) {lineStroke=purple1; lineFill=purple1;}
if (p2==true) {lineStroke=purple2; lineFill=purple2;}
if (p3==true) {lineStroke=purple3; lineFill=purple3;}
if (p4==true) {lineStroke=purple4; lineFill=purple4;}
if (p5==true) {lineStroke=purple5; lineFill=purple5;}
if (br1==true) {lineStroke=brown1; lineFill=brown1;}
if (br2==true) {lineStroke=brown2; lineFill=brown2;}
if (br3==true) {lineStroke=brown3; lineFill=brown3;}
if (br4==true) {lineStroke=brown4; lineFill=brown4;}
if (br5==true) {lineStroke=brown5; lineFill=brown5;}
if (s1==true) {lineStroke=shade1; lineFill=shade1;}
if (s2==true) {lineStroke=shade2; lineFill=shade2;}
if (s3==true) {lineStroke=shade3; lineFill=shade3;}
if (s4==true) {lineStroke=shade4; lineFill=shade4;}
if (s5==true) {lineStroke=shade5; lineFill=shade5;}

if (lineON==true) {
  if (draw ==  true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) {
      //fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
  if (ellipseON==true) {
    if (draw == true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) {
      fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      ellipse(mouseX, mouseY, diameterDrawing, diameterDrawing);
    }
  }
  if (ellipseON==true) {
    if (ellipseLON==true) {
      if (draw == true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) {
        fill(lineFill);
        stroke(lineStroke);
        ellipse(mouseX, mouseY, diameterDrawingL, diameterDrawingL);
      }
    }
  }
  if (ellipseON==true) {
    if (ellipseXLON==true) {
      if (draw == true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) {
        fill(lineFill);
        stroke(lineStroke);
        ellipse(mouseX, mouseY, diameterDrawingXL, diameterDrawingXL);
      }
    }
  }
  if (rectON==true) {
    if (draw == true && mouseX>= xDrawingSurface && mouseX<=xDrawingSurface+widthDrawingSurface && mouseY>=yDrawingSurface && mouseY<=yDrawingSurface+heightDrawingSurface ) {
      fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      rect(mouseX, mouseY, widthBrush, heightBrush);
    }
  }
  //
  if (lineON==true) {
  if (draw ==  true && mouseX>= xDrawingSurface1 && mouseX<=xDrawingSurface1+widthDrawingSurface1 && mouseY>=yDrawingSurface1 && mouseY<=yDrawingSurface1+heightDrawingSurface1 ) {
      //fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
  if (ellipseON==true) {
    if (draw == true && mouseX>= xDrawingSurface1 && mouseX<=xDrawingSurface1+widthDrawingSurface1 && mouseY>=yDrawingSurface1 && mouseY<=yDrawingSurface1+heightDrawingSurface1 ) {
      fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      ellipse(mouseX, mouseY, diameterDrawing, diameterDrawing);
    }
  }
  if (ellipseON==true) {
    if (ellipseLON==true) {
      if (draw == true && mouseX>= xDrawingSurface1 && mouseX<=xDrawingSurface1+widthDrawingSurface1 && mouseY>=yDrawingSurface1 && mouseY<=yDrawingSurface1+heightDrawingSurface1 ) {
        fill(lineFill);
        stroke(lineStroke);
        ellipse(mouseX, mouseY, diameterDrawingL, diameterDrawingL);
      }
    }
  }
  if (ellipseON==true) {
    if (ellipseXLON==true) {
      if (draw == true && mouseX>= xDrawingSurface1 && mouseX<=xDrawingSurface1+widthDrawingSurface1 && mouseY>=yDrawingSurface1 && mouseY<=yDrawingSurface1+heightDrawingSurface1 ) {
        fill(lineFill);
        stroke(lineStroke);
        ellipse(mouseX, mouseY, diameterDrawingXL, diameterDrawingXL);
      }
    }
  }
  if (rectON==true) {
    if (draw == true && mouseX>= xDrawingSurface1 && mouseX<=xDrawingSurface1+widthDrawingSurface1 && mouseY>=yDrawingSurface1 && mouseY<=yDrawingSurface1+heightDrawingSurface1 ) {
      fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      rect(mouseX, mouseY, widthBrush, heightBrush);
    }
  }
  //
  if (lineON==true) {
  if (draw ==  true && mouseX>= xDrawingSurface2 && mouseX<=xDrawingSurface2+widthDrawingSurface2 && mouseY>=yDrawingSurface2 && mouseY<=yDrawingSurface2+heightDrawingSurface2 ) {
      //fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
  if (ellipseON==true) {
    if (draw == true && mouseX>= xDrawingSurface2 && mouseX<=xDrawingSurface2 + widthDrawingSurface2 && mouseY>=yDrawingSurface2 && mouseY<=yDrawingSurface2+heightDrawingSurface2 ) {
      fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      ellipse(mouseX, mouseY, diameterDrawing, diameterDrawing);
    }
  }
  if (ellipseON==true) {
    if (ellipseLON==true) {
      if (draw == true && mouseX>= xDrawingSurface2 && mouseX<=xDrawingSurface2+widthDrawingSurface2 && mouseY>=yDrawingSurface2 && mouseY<=yDrawingSurface2+heightDrawingSurface2 ) {
        fill(lineFill);
        stroke(lineStroke);
        ellipse(mouseX, mouseY, diameterDrawingL, diameterDrawingL);
      }
    }
  }
  if (ellipseON==true) {
    if (ellipseXLON==true) {
      if (draw == true && mouseX>= xDrawingSurface2 && mouseX<=xDrawingSurface2 + widthDrawingSurface2 && mouseY>=yDrawingSurface2 && mouseY<=yDrawingSurface2+heightDrawingSurface2 ) {
        fill(lineFill);
        stroke(lineStroke);
        ellipse(mouseX, mouseY, diameterDrawingXL, diameterDrawingXL);
      }
    }
  }
  if (rectON==true) {
    if (draw == true && mouseX>= xDrawingSurface2 && mouseX<=xDrawingSurface2 + widthDrawingSurface2 && mouseY>=yDrawingSurface2 && mouseY<=yDrawingSurface2+heightDrawingSurface2 ) {
      fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      rect(mouseX, mouseY, widthBrush, heightBrush);
    }
  }
  //
  if (lineON==true) {
  if (draw ==  true && mouseX>= xDrawingSurface3 && mouseX<=xDrawingSurface3 + widthDrawingSurface3 && mouseY>=yDrawingSurface3 && mouseY<=yDrawingSurface3 + heightDrawingSurface3 ) {
      //fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
  if (ellipseON==true) {
    if (draw == true && mouseX>= xDrawingSurface3 && mouseX<=xDrawingSurface3+widthDrawingSurface3 && mouseY>=yDrawingSurface3 && mouseY<=yDrawingSurface3+heightDrawingSurface3 ) {
      fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      ellipse(mouseX, mouseY, diameterDrawing, diameterDrawing);
    }
  }
  if (ellipseON==true) {
    if (ellipseLON==true) {
      if (draw == true && mouseX>= xDrawingSurface3 && mouseX<=xDrawingSurface3+widthDrawingSurface3 && mouseY>=yDrawingSurface3 && mouseY<=yDrawingSurface3+heightDrawingSurface3 ) {
        fill(lineFill);
        stroke(lineStroke);
        ellipse(mouseX, mouseY, diameterDrawingL, diameterDrawingL);
      }
    }
  }
  if (ellipseON==true) {
    if (ellipseXLON==true) {
      if (draw == true && mouseX>= xDrawingSurface3 && mouseX<=xDrawingSurface3+widthDrawingSurface3 && mouseY>=yDrawingSurface3 && mouseY<=yDrawingSurface+heightDrawingSurface3 ) {
        fill(lineFill);
        stroke(lineStroke);
        ellipse(mouseX, mouseY, diameterDrawingXL, diameterDrawingXL);
      }
    }
  }
  if (rectON==true) {
    if (draw == true && mouseX>= xDrawingSurface3 && mouseX<=xDrawingSurface3+widthDrawingSurface3 && mouseY>=yDrawingSurface3 && mouseY<=yDrawingSurface3+heightDrawingSurface3 ) {
      fill(lineFill);
      stroke(lineStroke);
      strokeWeight(lineWeight);
      rect(mouseX, mouseY, widthBrush, heightBrush);
    }
  }
}
