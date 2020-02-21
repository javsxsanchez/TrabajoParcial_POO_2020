class Pantalla3{
  Pantalla3(){
    
  }
  void display(){
    background(10,118,71);
    
   

 delta+=0.05;
  background(#92163f);
  for(int i= 0; i<1080; i+=10){
    for(int j = 0; j<720; j+=10){
      noStroke();
      fill(noise(i*0.11+delta,j*1.05,delta)*211,10,21);
      rect(i,j,5,5);
    }
    
  }
    
    //texto
    fill(255);
    textSize(52);
    text("Selecciona un personaje", 430, 100); 
    
    textSize(20);
    fill(#FFFFFF);
    text("DA CLICK EN EL CIRCULO PARA SELECCIONAR TU PERSONAJE", 400, 680);
   

 }
}
