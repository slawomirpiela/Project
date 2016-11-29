int c;
PFont myfont;
float pi;

void setup(){
  size(800,800,P2D);
  myfont = createFont("Tahoma Bold",16); 
}

void drawTime(){
  fill(65,105,225);
  //String time = nf(hour(),2) + ":" + nf(minute(),2) + ":" + nf(second(),2);
  String time = ("Time ''Lines'' ");
  text(time,50, 100);
  noFill();
  strokeWeight(5);
  stroke(240,248,255);
  strokeCap(SQUARE);
  line(50,130,50+second(),130);
  stroke(135,206,235);
  line(50,120,50+minute(),120);
  stroke(65,105,225);
  line(50,110,50+hour(),110);
}

void drawBackground(){
  for(c = 0; c < 800; c+=10){
  noFill();
  ellipseMode(RADIUS);
  stroke(65,105,225,40);
  ellipse(width/2,height/2,c,460);
  }
}

void drawWaves(){
  noFill();
  String arcs = ("''Sound'' Arcs");
    if (key == '1') {
      pi = 3.15;
      text(arcs,490,240);
    }
    if (key == '2') {
      pi = 3.14;
      text(arcs,490,240);
    }
  stroke(65,140,random(100,225));
  translate(width/2+width*1/5, height/2);

  for(int r=10; r<150; r=r+10) {
    rotate(second());
    strokeWeight(r/30);
    arc(0, 0, r, r, 0, pi);
  }
}

void draw() {
  background(0);
  drawTime();
  drawBackground();
  drawWaves();
}