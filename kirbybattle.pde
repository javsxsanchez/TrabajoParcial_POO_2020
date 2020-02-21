//import processing.sound.*;
//SoundFile musica;

Pantalla1 pantalla1;
Pantalla2 pantalla2;
Pantalla3 pantalla3;
Pantalla4 pantalla4;

kirbyRosa kirby1;
kirbyRosa kirby2;
kirbyRosa kirby3;
kirbyRosa kirby4;

seleccion[] boton = new seleccion[5];


int p = 0;
float angle = 7;
float angle2 = -7;
int select = 0;
int posX;
int posY;
int ataque1;
int ataque2;
int n = 5;
int n1 = 5;



void setup(){
  int a;
  size(1080, 720);
  //Constructor de kirby es (color del cuerpo y manos, color de la sombra y mejillas
  //color de las piernas, color de sombra de las piernas, escalar)
  
  kirby1 = new kirbyRosa(#f2a5ab,#ec6a8e,#de005b,#870134,0.7,70,height/2);
  kirby4 = new kirbyRosa(102,80,24,1,0.7, 970,height/2);
  kirby2 = new kirbyRosa(#fce390,#f2cc74,#df473c,#b72b19, 0.7,370,height/2);
  kirby3 = new kirbyRosa(#4bc0fd,#09aafa,#0146d1,#105efc, 0.7,670,height/2);

  
  for( int i = 0; i < 5; i++){
  boton[i] = new seleccion((i+1)*210,200,#ffffff);
  
  }

  
  // PANTALLAS
  pantalla1 = new Pantalla1();
  pantalla2 = new Pantalla2();
  pantalla3 = new Pantalla3();
  pantalla4 = new Pantalla4();
  
  //AUDIO
  //musica = new SoundFile(this, "theme.mp3");
  //musica.play();
  

}
  
void draw(){
  
  
  if(p==0){
      pantalla1.display();

    if(keyCode== ENTER){
      p=1;
    }
    
  }
  if (p==1){
    pantalla2.display();
    if(keyCode== 32){
      p=2;
    }

if(keyCode== 9){
      p=0;
    }

  }
  
  if (p==2){
  
    pantalla3.display();
      kirby1.display();
      kirby2.display();
      kirby3.display();
      kirby4.display();
      for(int i = 0; i <5; i++){ 
        boton[i].display();
     
      }
      
      posX = mouseX;
      posY = mouseY;
      

}

      
    
if(select == 2){
  pantalla4.display();
  for(int i = 0; i < 10; i++){
    if(i%2 == 1){
      
            if(keyCode== 119){

      ataque1 = int(random(0,4));
            println("1 "+ ataque1);

      n -= ataque1;
      pantalla4.n=n;
            }
    

    
    }
    
    else{
      
      if(keyCode== 117){
      ataque2 = int(random(0,2));
      println("2 "+ ataque2);
      n1 -= ataque2;
      pantalla4.n2=n1;

    }
      
      
      
      
      
      
      
    }
  }
  
  
  
  //println("\n");
  //for(int i = 0; i <5; i++){
  //println(boton[i].s);
  //}
  
    }
    
    
    //IF PERRONSOTE
    if(boton[0].s==1){
      kirby1.escalar = 1;
      kirby1.display();
    }

    if(boton[1].s==1){
      kirby2.x = 700;
      kirby2.escalar = 1;
      kirby2.display();
    }
    
    if(boton[2].s==1){
      kirby3.escalar = 1;
      kirby3.display();
    }
    
    if(boton[3].s==1){
      kirby4.escalar = 1;
      kirby4.display();
    }


    }
    
    
    
    
    
    
    
  
  


void mouseClicked() {
if(posY >= 200 && posY <= 230){
        
        for(int i= 0; i<5; i++){
        if(posX >= 210*(i+1) && posX <= 240*(i+1)){
        boton[i].c=000000;
        boton[i].s=1;
        select++;
        }
        
      }
  }
  
}
