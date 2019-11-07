void GUI_Setup() {
  Font1 = createFont("Times New Roman", 32);
  Font2 = createFont("Times New Roman", 20);
  Font3 = createFont("Times New Roman", 28);

  background(0);
  rectMode(CENTER);
  fill(255);
  rect(width/2, height/2, 300, 400, 6);

  cp5 = new ControlP5(this); 

  cp5.addButton("Traek_et_kort")
    .setPosition(10, 10)
    .setSize(100, 50)
    ;
  cp5.addButton("Jeg_bliver")
    .setPosition(10, 70)
    .setSize(100, 50)
    ;
}

void GUI_Draw() {
  background(0);
  rectMode(CENTER);
  fill(255);
  rect(width/2, height/2, 300, 400, 6);

  textAlign(CENTER);
  fill(0);

  textFont(Font1);
  if (!Startet) {
    textFont(Font2);
  }

  text(DisplayValue, width/2, height/2);
  if (Startet) {
    textFont(Font2);
    text("Du har lige nu: " + BrugerPoint + " point", width/2, height/2-100);
  }
  
  if (SpillerTabt){
    fill(255, 0, 0);
    textFont(Font3);
    text("Du kom over 21 desværre", width/2, height/2-50);
    noLoop(); 
  }
}
