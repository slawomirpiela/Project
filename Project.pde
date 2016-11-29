Option option1,option2,option3,option4;
int c;
PFont myfont;
float pi;
float[] graph1 = {70,80,120,80,90,120,80,20,150},graph2 = {90,60,50,100,50,160,120,110,30};
float[] graph3 = {150,20,30,70,90,110,90,90,20},graph4 = {160,60,50,100,30,70,50,120,140};
ArrayList<MeteorLists> stars; 

void setup(){
  size(800,800,P2D);
  option1 = new Option(50,480, "WATER", graph1);
  option2 = new Option(50,420, "OXYGEN", graph2);
  option3 = new Option(50,360, "OZONE", graph3);
  option4 = new Option(50,300, "RADIATION", graph4);
  myfont = createFont("Tahoma Bold",16); 
}

//void drawMap(){
//  for(c = 0; c < 400; c+=10){
//  ellipseMode(RADIUS);
//  ellipse(width/2,height/2,c,random(c,400));
//  }
//}

void drawTime(){
  fill(65,105,225);
  //String time = nf(hour(),2) + ":" + nf(minute(),2) + ":" + nf(second(),2);
  String time = ("Time ''Lines'' ");
  textFont(myfont,18);
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
  pushMatrix();
  translate(width/2+width*1/5, height/2);

  for(int r=10; r<150; r=r+10) {
    rotate(second());
    strokeWeight(r/30);
    arc(0, 0, r, r, 0, pi);
  }
  popMatrix();
}

void draw() {
  background(0);
  drawTime();
  drawBackground();
  drawWaves();
  option1.draw();
  option2.draw();
  option3.draw();
  option4.draw();
  String inst = ("Press 1 for planet Uno, 2 for Dos");
  textFont(myfont,12);
  text(inst,580, 20);
}