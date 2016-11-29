class Option { 
int x1,y1,x2,y2;
float[]graph;
String s;

// The Constructor is defined with arguments.
Option(int tempx1,int tempy1, String temptext, float[] temparray){
  s = temptext;
  x1 = tempx1; 
  y1 = tempy1; 
  graph = temparray;
  x2 = x1 + 100;
  y2 = y1 + 50;
}

}