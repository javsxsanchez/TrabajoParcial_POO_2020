float trasladarx = 1;
float trasladary = 1;



class kirbyRosa{
//Manos
color c; //Color del cuerpo y manos
color s;//Color de la sombra y mejillas
color p;//Color de las piernas
color ps;//Color de la sombra de las piernas
float escalar;
float x;
float y;

kirbyRosa(color c_,color s_,color p_, color ps_,float escalar_){
c = c_;
s = s_;
p = p_;
ps = ps_;
escalar = escalar_;

}


kirbyRosa(color c_, color s_, color p_, color ps_,float escalar_, float x_, float y_){
c = c_;
s = s_;
p = p_;
ps = ps_;
escalar = escalar_;
x = x_;
y = y_;
}

void display(){
//Manos
pushMatrix();
scale(escalar);
//Manos
pushMatrix();
translate(x+233,y+100);
stroke(0);
strokeWeight(3);
rotate(angle);
fill(c);
ellipse(0,0, 50, 40);
popMatrix();

pushMatrix();
translate(x+10,y+130);
stroke(0);
strokeWeight(3);
rotate(angle2);
fill(c);
ellipse(0,0, 50, 40);
popMatrix();


//Pierna Derecha
pushMatrix();
strokeWeight(3);
fill(ps);
translate(x+160, y+170);
rotate(angle);
ellipseMode(CENTER);
ellipse(0,0, 130, 70);
fill(p);
noStroke();
ellipse(0,0, 123, 67);
popMatrix();

//Pierna Izquierda
pushMatrix();
stroke(0);
strokeWeight(3);
fill(ps);
translate(x+40, y+180);
rotate(angle2);
ellipseMode(CORNER);
ellipse(0,0, 130, 70);
fill(p);
noStroke();
ellipse(0,0, 118, 65);
popMatrix();

//Cuerpo
stroke(0);
fill(s);
ellipseMode(CORNER);
ellipse(x+40,y+0,200,200);
noStroke();
fill(c);
ellipseMode(CORNER);
ellipse(x+46,y+2,190,184);

//Ojo
ellipseMode(CORNER);
fill(#0375bd);
strokeWeight(4);
stroke(0);
ellipse(x+110, y+50, 20, 50);
noStroke();
ellipseMode(CORNER);
fill(0);
ellipse(x+110, y+52.5, 20, 35);
ellipseMode(CORNER);
fill(255);
ellipse(x+114, y+53, 13, 20);

//Ojo derecho trasladado
translate(x+60, y+0);
ellipseMode(CORNER);
fill(#0375bd);
strokeWeight(4);
stroke(0);
ellipse(100, 50, 20, 50);
noStroke();
ellipseMode(CORNER);
fill(0);
ellipse(100, 52.5, 20, 35);
ellipseMode(CORNER);
fill(255);
ellipse(104, 53, 13, 20);

//Sonrisa
stroke(0);
strokeWeight(3);
strokeCap(ROUND);
noFill();
beginShape();
curveVertex(55,80);
curveVertex(75,110);
curveVertex(95,110);
curveVertex(115,80);
endShape();


//Mejillas
ellipseMode(CORNER);
noStroke();
fill(s);
ellipse(15,100,30,20);
translate(105, 0);
fill(s);
ellipse(32,100,30,20);
popMatrix();

}

}
