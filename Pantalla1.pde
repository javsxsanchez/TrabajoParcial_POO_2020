float delta;

class Pantalla1{
    PFont font;
    PFont montserrat;
    float i;

  Pantalla1(){
        font = loadFont("KirbyClassic-100.vlw");
        montserrat = loadFont("Montserrat-Medium-100.vlw");

    
  }
  
  void display(){
        textFont(font);

 delta+=0.05;
  background(#92163f);
  for(int i= 0; i<1080; i+=10){
    for(int j = 0; j<720; j+=10){
      noStroke();
      fill(noise(i*0.01+delta,j*0.05,delta)*211,10,21);
      rect(i,j,5,5);
    }
    
  }
    


    
    
    //texto
    textSize(70);
    fill(#79072a);
    text("Kirby Battle Arena", 200, 380);
    textSize(70);
    fill(255);
    text("Kirby Battle Arena", 190, 376);
    
            textFont(montserrat);

    //Presiona enter
    textSize(32);
    fill(255);
    text("Presione ENTER para jugar", 300, 426); 
    
    
  }
}
