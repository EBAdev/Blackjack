int AntalDealerKort;
int DealaerTraek;
int Dealer_ukendt_kort_Vaerdi;
int DealerVaerdi =0;

boolean FirstTurn = true;
boolean Starttext =true;
String Dealer_ukendt_kort;

StringList DealerKort = new StringList();

void DealerTraek() {
  if (FirstTurn) {
    int KortNummer = int(random(0, antalKort));
    DisplayValue = "Dealeren har trukket et ukendt kort!";
    DealaerTraek = Integer.parseInt(KortVaerdi.get(KortNummer));
    Dealer_ukendt_kort = Kort.get(KortNummer);
    Dealer_ukendt_kort_Vaerdi = DealaerTraek;

    Kort.remove(KortNummer);
    KortVaerdi.remove(KortNummer);
    antalKort--;

    DealerKort.append("ukendt");
  } else if (!FirstTurn) {

    int KortNummer = int(random(0, antalKort));
    DisplayValue = Kort.get(KortNummer);
    DealaerTraek = Integer.parseInt(KortVaerdi.get(KortNummer));

    Kort.remove(KortNummer);
    KortVaerdi.remove(KortNummer);
    antalKort--;

    DealerVaerdi = DealerVaerdi + DealaerTraek;
    DealerKort.append(DisplayValue);
  }
  FirstTurn = false;
}
