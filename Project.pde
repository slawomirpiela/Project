Option option1,option2,option3,option4; //creating objects of option class
int c; //used in the loop to draw the liney background
PFont myfont; //declaring a font
float pi; //a float used to set the stopping point for arcs in the loop in drawWaves method
//4 arrays used to display the points on the graphs
float[] graph1 = {70,80,120,80,90,120,80,20,150},graph2 = {90,60,50,100,50,160,120,110,30};
float[] graph3 = {150,20,30,70,90,110,90,90,20},graph4 = {160,60,50,100,30,70,50,120,140};
ArrayList<MeteorLists> meteors; //declaring a new array list of class MeteorLists

void setup(){
  size(800,800); //size of the screen
  //using the option class to create the menu on the left of the screen
  option1 = new Option(50,480, "WATER", graph1);
  option2 = new Option(50,420, "OXYGEN", graph2);
  option3 = new Option(50,360, "OZONE", graph3);
  option4 = new Option(50,300, "RADIATION", graph4);
  myfont = createFont("Tahoma Bold",16); //creating my own font
  meteors = new ArrayList<MeteorLists>(); //initialising the array list
  meteors.add(new MeteorLists(width/2, height/2, 0,0)); //creating the first array, setting width&height to 0 to hide it
}

//void drawMap(){
//  for(c = 0; c < 400; c+=10){
//  ellipseMode(RADIUS);
//  ellipse(width/2,height/2,c,random(c,400));
//  }
//}

//method to use the current time in order to draw lines
void drawTime(){
  fill(65,105,225);
  String time1 = nf(hour(),2) + ":" + nf(minute(),2) + ":" + nf(second(),2); //was planning to use it to display the time 
  String time = ("Time ''Lines'' ");
  textFont(myfont,18);
  text(time + time1,50, 100);
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
//method that i used for drawing the background with ellipses
void drawBackground(){
  for(c = 0; c < 800; c+=10){
  noFill();
  ellipseMode(RADIUS);
  stroke(65,105,225,40);
  ellipse(width/2,height/2,c,460);
  }
}

//method that i used to display the "sound arcs" on the planets Uno and Duo
void drawWaves(){
  noFill();
  //if either of 1 or 2 buttons is pressed displays the text, if 1 is pressed pi = 3.15, if 2, p=3.14
  String arcs = ("''Sound'' Arcs");
    if (key == '1' || key == '2') {
      text(arcs,490,240);
      if(key == '1'){
         pi = 3.15;}
       if(key =='2'){
           pi = 3.14;
         }
    }
  stroke(65,140,random(200,225));
  //used push matrix & popmatrix to save the area where I wanted the translate to work
  pushMatrix();
  translate(width/2+width*1/5, height/2);
  //loop to get the sound arcs to rotate every millisecond/1000
  for(int r=10; r<150; r=r+10) {
    rotate(millis()/1000.);
    strokeWeight(r/30);
    arc(0, 0, r, r, 0, pi);
  }
  popMatrix();
}

//draw method to get the other methods to work.
void draw() {
  background(0);
  drawTime();
  drawBackground();
  drawWaves();
  option1.draw();
  option2.draw();
  option3.draw();
  option4.draw();
  //displaying these strings
  String inst = ("Press 1 for planet Uno, 2 for Dos");
  fill(65,105,225);
  textFont(myfont,12);
  text(inst,580, 20);
  String inst2 = ("Press a mouse button for magic");
  textFont(myfont,12);
  fill(65,105,225);
  text(inst2,580, 50);
  //loop to get the meteors to display & fall
  for (int i = meteors.size()-1; i >= 0; i--) { 
    MeteorLists meteor = meteors.get(i);
    meteor.fall();
    meteor.display();
  } 
  //if statement to create new "meteors" when pressing mouse button
  if(mousePressed){
    meteors.add(new MeteorLists(mouseX,mouseY,random(30,50),random(25,40)));
}
}