

class Pantalla4{
  int n2;
int n;
  Pantalla4(){
   n2 = 5; 
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
    textSize(70);
    fill(#FFFFFF);
    text("COMIENZA LA BATALLA", 160, 100);
    
    
    textSize(70);
    fill(255);
    text(str(n), 190, 376);
    
    textSize(70);
    fill(255);
    text(str(n2), 390, 376);
    
    
   

 }
}
  
  
