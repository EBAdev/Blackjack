int DealerSlut;
int SpillerSlut;
int counter=0;

boolean DealerOvertrukket;

void Afslut_spil() {
  DealerVaerdi = DealerVaerdi + Dealer_ukendt_kort_Vaerdi;

  while (DealerVaerdi < 17) {
    DealerTurn = true;
    DealerTraek();
    counter++;
  }
  if (DealerVaerdi > 21) {
    DealerOvertrukket = true;
  }
  DealerTurn = false;
  DealerSlut = 21 - DealerVaerdi;
  SpillerSlut = 21 - BrugerPoint;
  if (DealerSlut <= SpillerSlut && !DealerOvertrukket) {
    SpillerTabt = true;
  } else if (SpillerSlut < DealerSlut  && !DealerOvertrukket) {
    DealerTabt = true;
  }}
