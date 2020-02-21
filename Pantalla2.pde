
class Pantalla2{
  Pantalla2(){
    
  }
  
  void display(){
    background(10,118,71);
    
   
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
    fill(255);
    textSize(52);
    text("Kirby Battle Arena", 430, 100); 
   
    
    //Titulo 1 
    fill(255);
    textSize(42);
    text("Instrucciones", 100, 200); 
    
    
    // Párrafo 1
    fill(255);
    textSize(22);
    text("1.- En la siguiente pantalla, seleccione el personaje que desee.", 100, 250);
    
    textSize(22);
    text("2.- El primer jugador utilizará 'W' y 'E' para atacar ", 100, 300);
    
    textSize(22);
    text("3.- El segundo jugador utilizará 'I' y 'O' para atacar.", 100, 350);
    
    textSize(22);
    text("4.-Cada ataque reducirá tu vida, así que elígelo con sabiduría.", 100, 400);
    
    textSize(22);
    text("¡Mucha suerte! Y que gane el mejor...", 230, 550);
    
    textSize(22);
    text("¡Presiona ESPACIO para comenzar el juego!", 270, 580);
 }
}

  
