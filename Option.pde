//class Option
class Option { 
int x1,y1,x2,y2;
float[]graph;
String s;
int linex1;

// The Constructor
Option(int tempx1,int tempy1, String temptext, float[] temparray){
  s = temptext;
  x1 = tempx1; 
  y1 = tempy1; 
  graph = temparray;
  x2 = x1 + 100;
  y2 = y1 + 50;
}

void draw() {
  fill(0);
  stroke(65,105,225,80);
  //if the user's mouse is hoovered over the "option" buttons created using this class
  if (mouseX < 230 && mouseX > 50 && mouseY > y1 && mouseY < y1 + 50){
    stroke(255,140,0);
    //push and pop matrix to keep the area of translated point 0s
    pushMatrix();
    translate(50,650);
    float lineWidth = (float) (width-100)/(graph.length-1);
      for (int i=0; i<graph.length-1; i++) {
        strokeWeight(2);
        stroke(65,105,225);
        line(i*lineWidth, graph[i]-40, (i+1)*lineWidth, graph[i+1]-40);
        noFill();
        stroke(255,140,0);
        ellipse(i*lineWidth, graph[i]-40,5,5);
        textFont(myfont,10);
        fill(255);
        text(graph[i],i*lineWidth+5,graph[i]-20);
        }
    popMatrix();   
  }
  strokeWeight(6);
  rect(x1,y1,180,50);
  //pushing poping matrix for translation of 0s points for the text displaying the numbers
  pushMatrix();
  translate(x1,y1);
  fill(65,105,225);
  textFont(myfont,20);
  text(s,10,30);
  popMatrix();
  //if statement creating the line graph leading from point to point through the array
  for(linex1 = x1+8; linex1 < 230; linex1+=20){
    //strokeWeight(6);
    stroke(65,105,225,40);
    line(linex1,y1,linex1-5,y2);
  }
}
}