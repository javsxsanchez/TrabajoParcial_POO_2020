class Pantalla5{
  
    PFont font;
    PFont montserrat;
    
  Pantalla5(){
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
  
   if(ganador == 1){
   textSize(70);
    fill(#ffffff);
    text("Jugador 1 es el ganador", 200, 280);
   }
   
   if(ganador == 2){
   textSize(70);
    fill(#ffffff);
    text("Jugador 2 es el ganador", 200, 280);
   }
   
 
    
    
  }
}
