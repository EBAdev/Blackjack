Kortspil k;

PFont Font1;
PFont Font2;
PFont Font3;

import controlP5.*;
ControlP5 cp5;

void setup() {
  k = new Kortspil();
  k.kortspil_setup();
  
  Font1 = createFont("Times New Roman", 32);
  Font2 = createFont("Times New Roman", 20);
  Font3 = createFont("Times New Roman", 28);
  
  size(600, 600);
  background(0);
  rectMode(CENTER);
  fill(255);
  rect(width/2, height/2, 300, 400, 6);

  cp5 = new ControlP5(this); 

  cp5.addButton("Traek_endnu_et_kort")
    .setPosition(10, 10)
    .setSize(100, 50)
    ;
  cp5.addButton("Jeg_bliver")
    .setPosition(10, 70)
    .setSize(100, 50)
    ;
}

void draw() {
  k.kortspil_draw();
}
