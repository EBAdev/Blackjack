Kortspil k;

PFont Font1;
PFont Font2;
PFont Font3;

String DisplayValue = "Træk et kort for at starte spillet";

Boolean Startet = false;
Boolean SpillerTabt = false;

import controlP5.*;
ControlP5 cp5;

void setup() {
  size(600, 600);

  k = new Kortspil();
  k.kortspil_setup();

  GUI_Setup();
}

void draw() {
  if (BrugerPoint > 21) {
    SpillerTabt = true;
  }

  k.kortspil_draw();
  GUI_Draw();
}

void Traek_et_kort() {
  SpillerTraek();
}
