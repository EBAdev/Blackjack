void GUI_Setup() {
  Font1 = createFont("Times New Roman", 32);
  Font2 = createFont("Times New Roman", 20);
  Font3 = createFont("Times New Roman", 13);

  background(0);
  rectMode(CENTER);
  fill(255);
  rect(width/2, height/2, 300, 400, 6);

  cp5session1 = new ControlP5(this);
  cp5session2 = new ControlP5(this);
  cp5session3 = new ControlP5(this);
  cp5session4 = new ControlP5(this);

  cp5session2.setColorBackground( color(125, 0, 0 ) );
  cp5session2.setColorForeground( color(175, 0, 0 ) );
  cp5session2.setColorActive( color(255, 0, 0 ) );
  cp5session3.setColorBackground( color(0, 125, 0 ) );
  cp5session3.setColorForeground( color(0, 175, 0 ) );
  cp5session3.setColorActive( color(0, 255, 0 ) );

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
  cp5session3.addButton("Afsloer_dealer_kort")
    .setPosition(10, 10)
    .setSize(100, 50)
    ;
  cp5session4.addButton("Sejt")
    .setPosition(10, 10)
    .setSize(100, 50)
    ;
  cp5session1.show();
  cp5session2.hide();
  cp5session3.hide();
  cp5session4.hide();
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
    background(0);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 300, 400, 6);

    fill(255, 0, 0);
    textFont(Font3);
    text("Du tabte, desværre :(", width/2, height/2-100);
    text("Bedre held næste gang!", width/2, height/2+100);
    if (counter > 0) {
      fill(0);
      textFont(Font3);
      text("Da dealeren var under 17 point", width/2, height/2-50);
      text("var han nødt til at trække: "+counter, width/2, height/2);
      text("Kort mere, det anbragte ham på: " + DealerVaerdi + " point", width/2, height/2+50);
    }
    noLoop();
  }

  if (DealerTabt) {
    background(0);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 300, 400, 6);

    fill(0, 200, 0);
    textFont(Font3);
    text("Tillykke du vandt over Dealeren", width/2, height/2-100);
    text("Vildt sejt!", width/2, height/2+100);
    if (counter > 0) {
      fill(0);
      textFont(Font3);
      text("Da dealeren var under 17 point var han nødt til at trække:", width/2, height/2-50);
      text("var han nødt til at trække: "+counter, width/2, height/2);
      text("Kort mere, det anbragte ham på: " + DealerVaerdi + " point", width/2, height/2+50);
    }
    noLoop();
  } 
  if (DealerOvertrukket) {
    background(0);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 300, 400, 6);

    fill(0, 200, 0);
    textFont(Font3);
    text("Tillykke du vandt over Dealeren fordi han trak over sig", width/2, height/2-100);
    text("Vildt sejt", width/2, height/2+100);
    fill(0);
    textFont(Font3);
    text("Da dealeren var under 17 point", width/2, height/2-50);
    text("var han nødt til at trække: " + counter, width/2, height/2);
    text("Kort mere, det anbragte ham på: " + DealerVaerdi + " point", width/2, height/2+50);
  }

  if (afsloering) {
    background(0);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 300, 400, 6);

    textFont(Font2);
    fill(0, 200, 0);
    text("Det første kort dealeren trak var:", width/2, height/2-50);
    textFont(Font1);
    text(Dealer_ukendt_kort, width/2, height/2);
  }
}
