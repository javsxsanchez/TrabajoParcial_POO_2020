class Personaje{
  
  float x;
  float y;

  Personaje(float x_, float y_){
    x = x_;
    y = y_;
    
  }
  
  
  void display(){
    pushMatrix();
    fill(#000000);
    ellipse(x+0,y+0,100,100);
    fill(#ffffff);
    stroke(#000000);
    strokeWeight(2);
    ellipse(x+10,y+10,22,22);
    ellipse(x+60,y+10,22,22);
    stroke(#ffffff);
    strokeWeight(3);
    strokeCap(ROUND);
    noFill();
    beginShape();
    curveVertex(x+25,y+50);
    curveVertex(x+55,y+70);
    curveVertex(x+75,y+70);
    curveVertex(x+95,y+50);
    endShape();
    popMatrix();
  
  }
  
}
