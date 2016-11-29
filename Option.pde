class Option { 
int x1,y1,x2,y2;
float[]graph;
String s;
int linex1;

// The Constructor is defined with arguments.
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
  if (mouseX < 230 && mouseX > 50 && mouseY > y1 && mouseY < y1 + 50){
    stroke(255,140,0);
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
  pushMatrix();
  translate(x1,y1);
  fill(65,105,225);
  textFont(myfont,20);
  text(s,10,30);
  popMatrix();
  for(linex1 = x1+8; linex1 < 230; linex1+=20){
    //strokeWeight(6);
    stroke(65,105,225,40);
    line(linex1,y1,linex1-5,y2);
  }
}
}