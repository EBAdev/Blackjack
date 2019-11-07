int BrugerPoint;
int Traek;

void SpillerTraek() {
  Startet = true;

  int KortNummer = int(random(0, antalKort));
  DisplayValue = Kort.get(KortNummer);
  Traek = Integer.parseInt(KortVaerdi.get(KortNummer));

  Kort.remove(KortNummer);
  KortVaerdi.remove(KortNummer);
  antalKort--;

  if (Traek == 11) {
    if (BrugerPoint + Traek > 21) {
      Traek = 1;
    }
  }
  BrugerPoint = BrugerPoint + Traek;
}
