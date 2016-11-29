int c;
PFont myfont;

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

void draw() {
  background(0);
  drawTime();
  drawBackground(); 
}