Kortspil k;

PFont Font1;
PFont Font2;
PFont Font3;

String DisplayValue = "Træk et kort for at starte spillet";

import controlP5.*;
ControlP5 cp5;



void setup() {
  size(600, 600);

  k = new Kortspil();
  k.kortspil_setup();

  GUI_Start();
}

void draw() {
  k.kortspil_draw();
}

void Traek_et_kort() {
  Traek();
}
