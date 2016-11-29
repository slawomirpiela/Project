class MeteorLists {
  float x,y,s,w,h,a;
//Constructor
  MeteorLists(float mouseX, float mouseY,float tempw, float temph) {
    x = mouseX;
    y = mouseY;
    w = tempw;
    h = temph;
    s = 5;
  }
  void fall(){
    y = y + s;
  }
    void display() {
    stroke(0);
    noFill();
    ellipse(x,y,w,h);
  }
}