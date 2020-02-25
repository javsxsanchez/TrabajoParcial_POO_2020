class seleccion{
  float x;
  float y;
  color c;
  int s;
  seleccion(float x_, float y_, color c_){
  x = x_;
  y = y_;
  c = c_;
  s = 0;
  
  }
  
  
  void display(){
  fill(c);
  stroke(2);
  stroke(0);
    ellipseMode(CORNER);
  rect(x,y,30,30);
  

  
  
  
  }
}
