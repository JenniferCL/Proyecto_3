interface Personaje{
  void display();
  void ataques();
  void atacarjugador1();
  void defenderjugador1();
  void atacarjugador2();
  void defenderjugador2();
  void posicionj1();
  void posicionj2();
}

class Personaje1 implements Personaje{
  float x,y;
  Personaje1(float x_, float y_){
    x = x_;
    y = y_;
  }
  void display(){
    if(jugador1==2||jugador1==0||(jugador1==1 & pantalla==1)|| turnoS==2){
      imageMode(CENTER);
      image (personaje1,x,y,100,100);
    }
    else{
      if(jugador1==1 & pantalla==2){
        imageMode(CENTER);
        image (personajeder1,x,y,100,100);
      }
    }
  }
  void ataques(){
        fill(255,0,0);
        rectMode(CORNERS);
        rect(20,295,575,305);
        rect(20,305,30,385);
        rect(30,375,575,385);
        rect(565,305,575,375);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Colmillo igneo",50,620,300,100);
    text("Onda ignea",520,620,300,100);
    text("Lanzallamas",50,540,300,100);
    text("Giro Fuego",520,540,300,100);
  }
  void atacarjugador1(){
    print(x);
    if (d==0){
      x=150;
    }
    if (d>=1 && d<12){
      dxaj1=20;
    }
    x=x+dxaj1;
    if (d==12){
      dxaj1= dxaj1*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador1(){
    if (d>=12){
      dxaj1=-20;
    }
    x=x+dxaj1;
    if(x>=100){
      dxaj1=(dxaj1)*(-1);
    }
    else {
      if (d>=24){
        x=150;
      }
    }
  }
  void atacarjugador2(){
    if (d==0){
      x=450;
    }
    if (d>=1 && d<12){
      dxaj2=-20;
    }
    x=x+dxaj2;
    if (d==12){
      dxaj2= dxaj2*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador2(){
    if (d>=12){
      dxaj2=20;
    }
    x=x+dxaj2;
    if(x>=500){
      dxaj2=dxaj2*(-1);
    }
    else {
      if (d>=24){
        x=450;
      }
    }
  }
  void posicionj1(){
    x=150;
    y=150;
  }
  void posicionj2(){
    x=450;
    y=150;
  }
}

class Personaje2 implements Personaje{
  float x;
  float y;
  Personaje2(float x_, float y_){
    x = x_;
    y = y_;
  }
  void display(){
    if(jugador2==2||jugador1==0||(jugador1==2 & pantalla==1)|| turnoS==2){
      imageMode(CENTER);
      image (personaje2,x,y,100,100);
    }
    else{
      if(pantalla==2){
        imageMode(CENTER);
        image (personajeder2,x,y,100,100);
      }
    }
  }
  void ataques(){
        fill(#529BFF);
        rectMode(CORNERS);
        rect(20,295,575,305);
        rect(20,305,30,385);
        rect(30,375,575,385);
        rect(565,305,575,375);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Velo aurora",50,620,300,100);
    text("Ventisca",520,620,300,100);
    text("Rayo Hielo",50,540,300,100);
    text("Canto Helado",520,540,300,100);
  }
  void atacarjugador1(){
    print(x);
    if (d==0){
      x=150;
    }
    if (d>=1 && d<12){
      dxaj1=20;
    }
    x=x+dxaj1;
    if (d==12){
      dxaj1= dxaj1*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador1(){
    if (d>=12){
      dxaj1=-20;
    }
    x=x+dxaj1;
    if(x>=100){
      dxaj1=(dxaj1)*(-1);
    }
    else {
      if (d>=24){
        x=150;
      }
    }
  }
  void atacarjugador2(){
    if (d==0){
      x=450;
    }
    if (d>=1 && d<12){
      dxaj2=-20;
    }
    x=x+dxaj2;
    if (d==12){
      dxaj2= dxaj2*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador2(){
    if (d>=12){
      dxaj2=20;
    }
    x=x+dxaj2;
    if(x>=500){
      dxaj2=dxaj2*(-1);
    }
    else {
      if (d>=24){
        x=450;
      }
    }
  }
  void posicionj1(){
    x=150;
    y=150;
  }
  void posicionj2(){
    x=450;
    y=150;
  }
}

class Personaje3 implements Personaje{
  float x;
  float y;
  Personaje3(float x_, float y_){
    x = x_;
    y = y_;
  }
  void display(){
    if(jugador2==3||jugador1==0||(jugador1==3 & pantalla==1)|| turnoS==2){
      imageMode(CENTER);
      image (personaje3,x,y,100,100);
    }
    else{
      if(jugador1==3 & pantalla==2){
        imageMode(CENTER);
        image (personajeder3,x,y,100,100);
      }
    }
  }
  void ataques(){
        fill(#529BFF);
        rectMode(CORNERS);
        rect(20,295,575,305);
        rect(20,305,30,385);
        rect(30,375,575,385);
        rect(565,305,575,375);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Ataque burbuja",50,620,300,100);
    text("Pistola de agua",520,620,300,100);
    text("Hidroimpulso",50,540,300,100);
    text("Hidrobomba",520,540,300,100);
  }
  void atacarjugador1(){
    print(x);
    if (d==0){
      x=150;
    }
    if (d>=1 && d<12){
      dxaj1=20;
    }
    x=x+dxaj1;
    if (d==12){
      dxaj1= dxaj1*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador1(){
    if (d>=12){
      dxaj1=-20;
    }
    x=x+dxaj1;
    if(x>=100){
      dxaj1=(dxaj1)*(-1);
    }
    else {
      if (d>=24){
        x=150;
      }
    }
  }
  void atacarjugador2(){
    if (d==0){
      x=450;
    }
    if (d>=1 && d<12){
      dxaj2=-20;
    }
    x=x+dxaj2;
    if (d==12){
      dxaj2= dxaj2*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador2(){
    if (d>=12){
      dxaj2=20;
    }
    x=x+dxaj2;
    if(x>=500){
      dxaj2=dxaj2*(-1);
    }
    else {
      if (d>=24){
        x=450;
      }
    }
  }
  void posicionj1(){
    x=150;
    y=150;
  }
  void posicionj2(){
    x=450;
    y=150;
  }
}

class Personaje4 implements Personaje{
  float x;
  float y;
  Personaje4(float x_, float y_){
    x = x_;
    y = y_;
  }
  void display(){
    if(jugador2==4||jugador1==0||(jugador1==4 & pantalla==1)|| turnoS==2){
      imageMode(CENTER);
      image (personaje4,x,y,100,100);
    }
    else{
      if(jugador1==4 & pantalla==2){
        imageMode(CENTER);
        image (personajeder4,x,y,100,100);
      }
    }
  }
  void ataques(){
        fill(#959595);
        rectMode(CORNERS);
        rect(20,295,575,305);
        rect(20,305,30,385);
        rect(30,375,575,385);
        rect(565,305,575,375);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Puño bala",50,620,300,100);
    text("Ataque hélice",520,620,300,100);
    text("Puño meteoro",50,540,300,100);
    text("Rueda doble",520,540,300,100);
  }
  void atacarjugador1(){
    print(x);
    if (d==0){
      x=150;
    }
    if (d>=1 && d<12){
      dxaj1=20;
    }
    x=x+dxaj1;
    if (d==12){
      dxaj1= dxaj1*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador1(){
    if (d>=12){
      dxaj1=-20;
    }
    x=x+dxaj1;
    if(x>=100){
      dxaj1=(dxaj1)*(-1);
    }
    else {
      if (d>=24){
        x=150;
      }
    }
  }
  void atacarjugador2(){
    if (d==0){
      x=450;
    }
    if (d>=1 && d<12){
      dxaj2=-20;
    }
    x=x+dxaj2;
    if (d==12){
      dxaj2= dxaj2*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador2(){
    if (d>=12){
      dxaj2=20;
    }
    x=x+dxaj2;
    if(x>=500){
      dxaj2=dxaj2*(-1);
    }
    else {
      if (d>=24){
        x=450;
      }
    }
  }
  void posicionj1(){
    x=150;
    y=150;
  }
  void posicionj2(){
    x=450;
    y=150;
  }
}

class Personaje5 implements Personaje{
  float x;
  float y;
  Personaje5(float x_, float y_){
    x = x_;
    y = y_;
  }
  void display(){
    if(jugador2==5||jugador1==0||(jugador1==5 & pantalla==1)|| turnoS==2){
      imageMode(CENTER);
      image (personaje5,x,y,100,100);
    }
    else{
      if(jugador1==5 & pantalla==2){
        imageMode(CENTER);
        image (personajeder5,x,y,100,100);
      }
    }
  }
  void ataques(){
        fill(#89047C);
        rectMode(CORNERS);
        rect(20,295,575,305);
        rect(20,305,30,385);
        rect(30,375,575,385);
        rect(565,305,575,375);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Puño incremento",50,620,300,100);
    text("Contraataque",520,620,300,100);
    text("Gancho alto",50,540,300,100);
    text("Fuerza bruta",520,540,300,100);
  }
  void atacarjugador1(){
    print(x);
    if (d==0){
      x=150;
    }
    if (d>=1 && d<12){
      dxaj1=20;
    }
    x=x+dxaj1;
    if (d==12){
      dxaj1= dxaj1*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador1(){
    if (d>=12){
      dxaj1=-20;
    }
    x=x+dxaj1;
    if(x>=100){
      dxaj1=(dxaj1)*(-1);
    }
    else {
      if (d>=24){
        x=150;
      }
    }
  }
  void atacarjugador2(){
    if (d==0){
      x=450;
    }
    if (d>=1 && d<12){
      dxaj2=-20;
    }
    x=x+dxaj2;
    if (d==12){
      dxaj2= dxaj2*(-1);
    }
    else {
      if (d>=24){
        dxaj1=0;
      }
    }
  }
  void defenderjugador2(){
    if (d>=12){
      dxaj2=20;
    }
    x=x+dxaj2;
    if(x>=500){
      dxaj2=dxaj2*(-1);
    }
    else {
      if (d>=24){
        x=450;
      }
    }
  }
  void posicionj1(){
    x=150;
    y=150;
  }
  void posicionj2(){
    x=450;
    y=150;
  }
}