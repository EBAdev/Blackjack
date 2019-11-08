Kortspil k;

PFont Font1;
PFont Font2;
PFont Font3;

String DisplayValue = "Træk et kort for at starte spillet";


Boolean Startet = false;
Boolean DealerTurn = false;
Boolean SpillerTabt = false;
Boolean DealerTabt = false;
Boolean SpillerOvertrukket = false;

boolean afsloering;

import controlP5.*;
ControlP5 cp5session1;
ControlP5 cp5session2;
ControlP5 cp5session3;
ControlP5 cp5session4;

void setup() {
  size(600, 600);

  k = new Kortspil();
  k.kortspil_setup();

  GUI_Setup();
}

void draw() {
  if (BrugerPoint > 21) {
    SpillerOvertrukket = true;
  } else if (DealerVaerdi > 21) {
    DealerTabt = true;
  }

  k.kortspil_draw();
  GUI_Draw();
}

void Traek_et_kort() {
  DealerTurn = false;
  SpillerTraek();
  cp5session1.hide();
  cp5session2.show();
}

void Se_dealer_traek() {
  DealerTurn = true;
  DealerTraek();
  cp5session1.show();
  cp5session2.hide();
}
void Jeg_bliver() {
  cp5session1.hide();
  cp5session2.hide();
  cp5session3.show();
}
void Afsloer_dealer_kort() {
  afsloering= true;
  cp5session1.hide();
  cp5session2.hide();
  cp5session3.hide();
  cp5session4.show();
}
void Sejt() {
  afsloering = false;
  Afslut_spil(); 
  cp5session1.hide();
  cp5session2.hide();
  cp5session3.hide();
  cp5session4.hide();
}
