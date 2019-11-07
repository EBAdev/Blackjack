void GUI_Setup() {
  Font1 = createFont("Times New Roman", 32);
  Font2 = createFont("Times New Roman", 20);
  Font3 = createFont("Times New Roman", 12);

  background(0);
  rectMode(CENTER);
  fill(255);
  rect(width/2, height/2, 300, 400, 6);

  cp5session1 = new ControlP5(this);
  cp5session2 = new ControlP5(this);

  cp5session2.setColorBackground( color(125, 0, 0 ) );
  cp5session2.setColorForeground( color(175, 0, 0 ) );
  cp5session2.setColorActive( color(255, 0, 0 ) );

  cp5session1.addButton("Traek_et_kort")
    .setPosition(10, 10)
    .setSize(100, 50)
    ;

  cp5session1.addButton("Jeg_bliver")
    .setPosition(10, 70)
    .setSize(100, 50)
    ;

  cp5session2.addButton("Se_dealer_traek")
    .setPosition(10, 10)
    .setSize(100, 50)
    ;
  cp5session1.show();
  cp5session2.hide();
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
  } else if (Startet && Starttext && !FirstTurn) {
    textFont(Font2);
  }

  text(DisplayValue, width/2, height/2);
  if (Startet) {
    textFont(Font2);
    text("Du har lige nu: " + BrugerPoint + " point", width/2, height/2-100);
    text("Dealeren har lige nu: " + DealerVaerdi + " point", width/2, height/2+100);
  }


  if (SpillerTabt) {
    fill(255, 0, 0);
    textFont(Font2);
    text("Du kom over 21 desværre", width/2, height/2-50);
    text("Bedre held næste gang!", width/2, height/2+50);
    noLoop();
  }

  if (DealerTabt) {
    fill(0, 200, 0);
    textFont(Font2);
    text("Tillykke du vandt over Dealeren", width/2, height/2-50);
    text("Vildt sejt!", width/2, height/2+50);
    noLoop();
  }
}
