PImage fondo;
PImage personaje1, personaje11, personaje2, personaje21, personaje3, personaje31, personaje4, personaje41, personaje5, personaje51;
PImage personajeder1, personajeder11, personajeder2, personajeder21, personajeder3, personajeder31, personajeder4, personajeder41, personajeder5, personajeder51;
int pantalla;
float c1,c2,dc;
PFont letra;
PFont letra1;
PFont letra2;
int musica1, musica2;

import processing.sound.*;

SoundFile fondo1;
SoundFile batalla;

Personaje personaje1p1;
Personaje personaje2p1;
Personaje personaje3p1;
Personaje personaje4p1;
Personaje personaje5p1;
Personaje personaje1p21;
Personaje personaje2p21;
Personaje personaje3p21;
Personaje personaje4p21;
Personaje personaje5p21;
Personaje personaje1p22;
Personaje personaje2p22;
Personaje personaje3p22;
Personaje personaje4p22;
Personaje personaje5p22;
Personaje personaje1ganador;
Personaje personaje2ganador;
Personaje personaje3ganador;
Personaje personaje4ganador;
Personaje personaje5ganador;
int jugador1, jugador2;
int turnoS;
int turno;
int ataque;
int vida,vida1,vida2;
float dx=10;
int sp2;
int d=0;
float dxaj1=10;
float dxaj2=-10;

void setup(){
  size (600,400);
  fondo = loadImage("Universo.jpg");
  personaje1 =loadImage ("personaje1.jpg");
  personaje11 =loadImage ("personaje11.jpg");
  personaje1.mask(personaje11);
  personaje2 =loadImage ("personaje2.jpg");
  personaje21 =loadImage ("personaje21.jpg");
  personaje2.mask(personaje21);
  personaje3 =loadImage ("personaje3.jpg");
  personaje31 =loadImage ("personaje31.jpg");
  personaje3.mask(personaje31);
  personaje4 =loadImage ("personaje4.jpg");
  personaje41 =loadImage ("personaje41.jpg");
  personaje4.mask(personaje41);
  personaje5 =loadImage ("personaje5.jpg");
  personaje51 =loadImage ("personaje51.jpg");
  personaje5.mask(personaje51);
  personajeder1 =loadImage ("personaje1der.jpg");
  personajeder11 =loadImage ("personaje11der.jpg");
  personajeder1.mask(personajeder11);
  personajeder2 =loadImage ("personaje2der.jpg");
  personajeder21 =loadImage ("personaje21der.jpg");
  personajeder2.mask(personajeder21);
  personajeder3 =loadImage ("personaje3der.jpg");
  personajeder31 =loadImage ("personaje31der.jpg");
  personajeder3.mask(personajeder31);
  personajeder4 =loadImage ("personaje4der.jpg");
  personajeder41 =loadImage ("personaje41der.jpg");
  personajeder4.mask(personajeder41);
  personajeder5 =loadImage ("personaje5der.jpg");
  personajeder51 =loadImage ("personaje51der.jpg");
  personajeder5.mask(personajeder51);
  letra=loadFont("ZeroVelocityBRK-38.vlw");
  letra1=loadFont("PressStartReg-13.vlw");
  letra2=loadFont("ZeroVelocityBRK-20.vlw");
  personaje1p1 = new Personaje1 (100,150);
  personaje2p1 = new Personaje2 (300,150);
  personaje3p1 = new Personaje3 (500,150);
  personaje4p1 = new Personaje4 (200,300);
  personaje5p1 = new Personaje5 (400,300);
  personaje1p21 = new Personaje1 (150,150);
  personaje2p21 = new Personaje2 (150,150);
  personaje3p21 = new Personaje3 (150,150);
  personaje4p21 = new Personaje4 (150,150);
  personaje5p21 = new Personaje5 (150,150);
  personaje1p22 = new Personaje1 (450,150);
  personaje2p22 = new Personaje2 (450,150);
  personaje3p22 = new Personaje3 (450,150);
  personaje4p22 = new Personaje4 (450,150);
  personaje5p22 = new Personaje5 (450,150);
  personaje1ganador = new Personaje1 (300,200);
  personaje2ganador = new Personaje2 (300,200);
  personaje3ganador = new Personaje3 (300,200);
  personaje4ganador = new Personaje4 (300,200);
  personaje5ganador = new Personaje5 (300,200);
  c1=50;
  c2=80;
  dc=10;
  vida1=50;
  vida2=50;
  vida=1;
  turnoS=1;
  turno=1;
  d=0;

  fondo1 = new SoundFile(this, "Gorillaz Andromeda - 8 Bit Universe (Visual).mp3");
  fondo1.loop();
  fondo1.amp(0.5);
  fondo1.jump(2);
  
  batalla = new SoundFile(this, "Stonebank - The Pressure.mp3");
}

void draw(){
  imageMode(CORNERS);
  image (fondo,0,0,600,400);
  rectMode(CORNERS);
  fill(3,1,31,95);
  rect(0,0,600,400);
  switch(pantalla){
    case 0:
    fill(255,120);
    stroke(255,150);
    rect(50,60,550,260);
    c1+=dc;
    c2+=dc;
    fill(255);
    noStroke();
    rect(c1,60,c2,260);
    if(c1>510 & c2>540){
      c1=50;
      c2=80;
    }
    fill(39,21,78);
    noStroke();
    rect(60,70,540,250);
    fill(255,200);
    rectMode(CORNERS);
    rect (250,300,350,340);
    if((mouseX>250)&(mouseX<350)&(mouseY>300)&(mouseY<340)){
      cursor(HAND);
    }
    else{
      cursor(ARROW);
    }
    fill(255);
    textFont(letra);
    textLeading(60);
    textAlign(CENTER,CENTER);
    text("LOS PERROS DEL APOCALIPSIS",60,70,540,250);
    fill(3,1,31);
    textFont(letra1);
    text("Iniciar",300,320);
    break;
    case 1:
    fill(255,140);
    noStroke();
    rectMode(CENTER);
    rect (100,150,100,100);
    rect (300,150,100,100);
    rect (500,150,100,100);
    rect (200,300,100,100);
    rect (400,300,100,100);
    if(turnoS==1){
      fill(255);
      textFont(letra1);
      textAlign(CENTER,CENTER);
      text("Jugador 1",100,50,120,120);
    }
    else{
      if(turnoS==2){
      fill(255);
      textFont(letra1);
      textAlign(CENTER,CENTER);
      text("Jugador 2",500,50,120,120);
      }
    }
    if(((mouseX>50)&(mouseX<150)&(mouseY>100)&(mouseY<200)&jugador1!=1||
    ((mouseX>250)&(mouseX<350)&(mouseY>100)&(mouseY<200)&jugador1!=2)||
    ((mouseX>450)&(mouseX<550)&(mouseY>100)&(mouseY<200)&jugador1!=3)||
    ((mouseX>150)&(mouseX<250)&(mouseY>250)&(mouseY<350)&jugador1!=4)||
    ((mouseX>350)&(mouseX<450)&(mouseY>250)&(mouseY<350)&jugador1!=5))){
      cursor(HAND);
    }
    else{
      cursor(ARROW);
    }
    if((mouseX>50)&(mouseX<150)&(mouseY>100)&(mouseY<200)&jugador1!=1){
      sp2=1;
    }
    if((mouseX>250)&(mouseX<350)&(mouseY>100)&(mouseY<200)&jugador1!=2){
      sp2=2;
    }
    if((mouseX>450)&(mouseX<550)&(mouseY>100)&(mouseY<200)&jugador1!=3){
      sp2=3;
    }
    if((mouseX>150)&(mouseX<250)&(mouseY>250)&(mouseY<350)&jugador1!=4){
      sp2=4;
    }
    if((mouseX>350)&(mouseX<450)&(mouseY>250)&(mouseY<350)&jugador1!=5){
      sp2=5;
    }
    switch(sp2){
      case 1:
      fill(255,150);
      rectMode(CENTER);
      rect (100,150,100,100);
      break;
      case 2:
      fill(255,150);
      rectMode(CENTER);
    rect (300,150,100,100);
      break;
      case 3:
      fill(255,150);
      rectMode(CENTER);
    rect (500,150,100,100);
      break;
      case 4:
      fill(255,150);
      rectMode(CENTER);
    rect (200,300,100,100);
      break;
      case 5:
      fill(255,150);
      rectMode(CENTER);
    rect (400,300,100,100);
      break;
    }
    noStroke();
    rectMode(CORNERS);
    fill(179,77,204,130);
    rect(200,20,400,80);
    fill(255);
    textFont(letra2);
    textAlign(CENTER,CENTER);
    text("Selecion de personaje",200,0,400,100);
    personaje1p1.display();
    personaje2p1.display();
    personaje3p1.display();
    personaje4p1.display();
    personaje5p1.display();
    if(turnoS==2){
      switch (jugador1){
        case 1:
    rectMode(CENTER);
    fill(3,1,31,140);
    rect (100,150,100,100);
        break;
        case 2:
    rectMode(CENTER);
    fill(3,1,31,140);
    rect (300,150,100,100);
        break;
        case 3:
    rectMode(CENTER);
    fill(3,1,31,140);
    rect (500,150,100,100);
        break;
        case 4:
    rectMode(CENTER);
    fill(3,1,31,140);
    rect (200,300,100,100);
        break;
        case 5:
    rectMode(CENTER);
    fill(3,1,31,140);
    rect (400,300,100,100);
        break;
      }
    }
    break;
    case 2:
    if (d>=1){
      d++;
    }
      if (d>=24 & (turno%2==0|| turno%2==1)){
        turno+=1;
        d=0;
        dxaj1=0;
      }
    musica1++;
    fondo1.stop();
    println(d);
    
    if (musica1==1){
      batalla.play();
      batalla.amp(0.25);
      batalla.jump(88);
    }
    
    if(vida1<vida2){
      vida=vida1;
    }
    else{
      if (vida2<vida1){
        vida=vida2;
      }
    }
      fill(255);
      noStroke();
      rectMode(CENTER);
      rect(300,340,580,100);
    fill(255);
    textFont(letra2);
    textAlign(CENTER,CENTER);
    text("Turno",300,50,300,100);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text(vida2,60,80);
    text("/50",90,80);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text(vida1,520,80);
    text("/50",550,80);
    if(turno%2==1){
    fill(255);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Jugador 1",70,60,120,120);
    }
    else{
      if(turno%2==0){
      }
        fill(255);
        textFont(letra1);
        textAlign(CENTER,CENTER);
        text("Jugador 2",510,60,120,120);
    }
    turnoS =0;
    fill(255,180);
    noStroke();
    rectMode(CENTER);
    rect(300,340,580,100);
    switch (jugador1){
      case 1:
      personaje1p21.display();
      if(turno%2==1){
        personaje1p21.ataques();
        if (d>=1){
        personaje1p21.atacarjugador1();
        if (d>=24){
          personaje1p21.posicionj1();
        }
        }
      }
      else{
        if (turno%2==0 & d==12){
          personaje1p21.defenderjugador1();
        }
      }
      if (turno%2==0 & d==0){
          personaje1p21.posicionj1();
      }
      break;
      case 2:
      personaje2p21.display();
      if(turno%2==1){
        personaje2p21.ataques();
        if (d>=1){
        personaje2p21.atacarjugador1();
        if (d>=24){
          personaje2p21.posicionj1();
        }
        }
      }
      else{
        if (turno%2==0 & d==12){
          personaje2p21.defenderjugador1();
        }
      }
      if (turno%2==0 & d==0){
          personaje2p21.posicionj1();
      }
      break;
      case 3:
      personaje3p21.display();
      if(turno%2==1){
        personaje3p21.ataques();
        if (d>=1){
        personaje3p21.atacarjugador1();
        if (d>=24){
          personaje3p21.posicionj1();
        }
        }
      }
      else{
        if (turno%2==0 & d==12){
          personaje3p21.defenderjugador1();
        }
      }
      if (turno%2==0 & d==0){
          personaje3p21.posicionj1();
      }
      break;
      case 4:
      personaje4p21.display();
      if(turno%2==1){
        personaje4p21.ataques();
        if (d>=1){
        personaje4p21.atacarjugador1();
        if (d>=24){
          personaje4p21.posicionj1();
        }
        }
      }
      else{
        if (turno%2==0 & d==12){
          personaje4p21.defenderjugador1();
        }
      }
      if (turno%2==0 & d==0){
          personaje4p21.posicionj1();
      }
      break;
      case 5:
      personaje5p21.display();
      if(turno%2==1){
        personaje5p21.ataques();
        if (d>=1){
        personaje5p21.atacarjugador1();
        if (d>=24){
          personaje5p21.posicionj1();
        }
        }
      }
      else{
        if (turno%2==0 & d==12){
          personaje5p21.defenderjugador1();
        }
      }
      if (turno%2==0 & d==0){
          personaje5p21.posicionj1();
      }
      break;
    }
    switch(jugador2){
      case 1:
      personaje1p22.display();
      if(turno%2==0){
        personaje1p22.ataques();
        if (d>=1){
        personaje1p22.atacarjugador2();
        if (d>=24){
          personaje1p21.posicionj2();
        }
        }
      }
      else{
        if (turno%2==1 & d==12){
          personaje1p22.defenderjugador2();
        }
      }
      if (turno%2==1 & d==0){
          personaje1p22.posicionj2();
      }
      break;
      case 2:
      personaje2p22.display();
      if(turno%2==0){
        personaje2p22.ataques();
        if (d>=1){
        personaje2p22.atacarjugador2();
        if (d>=24){
          personaje2p21.posicionj2();
        }
        }
      }
      else{
        if (turno%2==1 & d==12){
          personaje2p22.defenderjugador2();
        }
      }
      if (turno%2==1 & d==0){
          personaje2p22.posicionj2();
      }
      break;
      case 3:
      personaje3p22.display();
      if(turno%2==0){
        personaje3p22.ataques();
        if (d>=1){
        personaje3p22.atacarjugador2();
        if (d>=24){
          personaje3p21.posicionj2();
        }
        }
      }
      else{
        if (turno%2==1 & d==12){
          personaje3p22.defenderjugador2();
        }
      }
      if (turno%2==1 & d==0){
          personaje3p22.posicionj2();
      }
      break;
      case 4:
      personaje4p22.display();
      if(turno%2==0){
        personaje4p22.ataques();
        if (d>=1){
        personaje4p22.atacarjugador2();
        if (d>=24){
          personaje4p21.posicionj2();
        }
        }
      }
      else{
        if (turno%2==1 & d==12){
          personaje4p22.defenderjugador2();
        }
      }
      if (turno%2==1 & d==0){
          personaje4p22.posicionj2();
      }
      break;
      case 5:
      personaje5p22.display();
      if(turno%2==0){
        personaje5p22.ataques();
        if (d>=1){
        personaje5p22.atacarjugador2();
        if (d>=24){
          personaje5p21.posicionj2();
        }
        }
      }
      else{
        if (turno%2==1 & d==12){
          personaje5p22.defenderjugador2();
        }
      }
      if (turno%2==1 & d==0){
          personaje5p22.posicionj2();
      }
      break;
    }
    if((mouseX>90)&(mouseX<215)&(mouseY>300)&(mouseY<330)||(mouseX>90)&(mouseX<215)&(mouseY>345)&(mouseY<370)||
    (mouseX>350)&(mouseX<490)&(mouseY>300)&(mouseY<330)||(mouseX>350)&(mouseX<490)&(mouseY>345)&(mouseY<370)){
      cursor(HAND);
    }
    else{
    cursor(ARROW);
    }
    if(vida<=0 & d==0){
      pantalla=3;
    }
    break;
    case 3:
    musica2++;
    batalla.stop();
    if (musica2==1){
      fondo1.loop();
    }
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(180,320,170,50);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Iniciar nueva partida",180,320,230,340);
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(420,320,170,50);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Cerrar",420,320,230,340);
    if((mouseX>95)&(mouseX<265)&(mouseY>295)&(mouseY<345)||
    (mouseX>335)&(mouseX<505)&(mouseY<345)&(mouseY>295)){
      cursor(HAND);
    }
    else{
      cursor(ARROW);
    }
    fill(255);
    textFont(letra2);
    textAlign(CENTER,CENTER);
    text("GANADOR",300,80,300,100);
    if(vida2<=0){
      fill(255);
    textFont(letra2);
    textAlign(CENTER,CENTER);
    text("JUGADOR 2",300,200,300,100);
    }
    else{
      if (vida1<=0){
        fill(255);
    textFont(letra2);
    textAlign(CENTER,CENTER);
    text("JUGADOR 1",300,200,300,100);
    }
    }
    break;
  }
}



  void mouseReleased(){
  switch(pantalla){
  case 0:
  if((mouseX>250)&(mouseX<350)&(mouseY>300)&(mouseY<340)){
    cursor(HAND);
    pantalla=1;
  }
  break;
  case 1:
  if((mouseX>50)&(mouseX<150)&(mouseY>100)&(mouseY<200)){
    cursor(HAND);
    if(turnoS==1){
      turnoS=2;
      jugador1=1;
    }
    else{
      if(turnoS==2&jugador1!=1){
    pantalla =2;
    jugador2=1;
      }
    }
  }
  if((mouseX>250)&(mouseX<350)&(mouseY>100)&(mouseY<200)){
    cursor(HAND);
    if(turnoS==1){
      turnoS=2;
      jugador1=2;
    }
    else{
      if(turnoS==2&jugador1!=2){
    pantalla =2;
    jugador2=2;
      }
    }
  }
  if((mouseX>450)&(mouseX<550)&(mouseY>100)&(mouseY<200)){
    cursor(HAND);
    if(turnoS==1){
      turnoS=2;
      jugador1=3;
    }
    else{
      if(turnoS==2&jugador1!=3){
    pantalla =2;
    jugador2=3;
      }
    }
  }
  if((mouseX>150)&(mouseX<250)&(mouseY>250)&(mouseY<350)){
    cursor(HAND);
    if(turnoS==1){
      turnoS=2;
      jugador1=4;
    }
    else{
      if(turnoS==2&jugador1!=4){
    pantalla=2;
    jugador2=4;
      }
    }
  }
  if((mouseX>350)&(mouseX<450)&(mouseY>250)&(mouseY<350)){
    cursor(HAND);
    if(turnoS==1){
      turnoS=2;
      jugador1=5;
    }
    else{
      if(turnoS==2&jugador1!=5){
    pantalla =2;
    jugador2=5;
      }
    }
  }
  case 2:
    if((mouseX>90)&(mouseX<215)&(mouseY>300)&(mouseY<330)&(d==0)){
      d=1;
      if(turno%2==0){
        vida2=vida2-5;
      }
      else{
        if(turno%2==1){
          vida1=vida1-5;
        }
      }
  }
  if((mouseX>90)&(mouseX<215)&(mouseY>345)&(mouseY<370)&(d==0)){
    d=1;
      if(turno%2==0){
        vida2=vida2-8;
      }
      else{
        if(turno%2==1){
          vida1=vida1-8;
        }
      }
  }
  if((mouseX>350)&(mouseX<490)&(mouseY>300)&(mouseY<330)&(d==0)){
    d=1;
      if(turno%2==0){
        vida2=vida2-10;
      }
      else{
        if(turno%2==1){
          vida1=vida1-10;
        }
      }
  }
  if((mouseX>350)&(mouseX<490)&(mouseY>345)&(mouseY<370)&(d==0)){
    d=1;
      if(turno%2==0){
        vida2=vida2-15;
      }
      else{
        if(turno%2==1){
          vida1=vida1-15;
        }
      }
  }
  break;
  case 3:
  if((mouseX>95)&(mouseX<265)&(mouseY>295)&(mouseY<345)){
    pantalla=0;
  jugador1=0;
  jugador2=0;
  vida1=50;
  vida2=50;
  vida=1;
  turnoS=1;
  turno=1;
  musica1 =0;
  musica2= 0;
  d=0;
  dx=0;
    redraw();
  }
  else{
    if((mouseX>335)&(mouseX<505)&(mouseY<345)&(mouseY>295)){
      exit();
    }
  }
  break;
  }
  }
  
  void keyPressed() {
    switch (pantalla){
      case 0:
      if (key ==ENTER){
        pantalla=1;
      }
      break;
    }
}