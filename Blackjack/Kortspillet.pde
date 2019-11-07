String [] kuloer = new String[4];
String [] vaerdi = new String[13];
StringList Kort = new StringList();
StringList KortVaerdi = new StringList();

int antalKort=52;
int Counter=0;

class Kortspil {
  void kortspil_setup() {
    kuloer[0]="Hjerter";
    kuloer[1]="Ruder";
    kuloer[2]="Spar";
    kuloer[3]="Kloer";

    vaerdi[0]="Es";
    vaerdi[10]="Knaegt";
    vaerdi[11]="Dronning";
    vaerdi[12]="Konge";
  }
  void kortspil_draw() { 
    for (int i = 0; i < 9; i++) {
      vaerdi[i+1] = str(i+2);
    }

    while ( Counter < 52) {
      for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 13; j++) {
          Kort.append(kuloer[i]+" "+vaerdi[j]);
          if (vaerdi[j]=="Knaegt"||vaerdi[j]=="Dronning"||vaerdi[j]=="Konge") {
            KortVaerdi.append("10");
          } else if (vaerdi[j]=="Es") {
            KortVaerdi.append("11");
          } else 
          KortVaerdi.append(vaerdi[j]);
          Counter++;
        }
      }
    }
  }
}
