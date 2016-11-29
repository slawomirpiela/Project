class MeteorLists {
  float x,y,s,g,w,h,a;
//Constructor
  MeteorLists(float mouseX, float mouseY,float tempw, float temph) {
    x = mouseX;
    y = mouseY;
    w = tempw;
    h = temph;
    s = 0;
    g = 0.1;
  }
  void fall(){
    s = s + g;
    y = y + s;
    if (y > height) {
    y = height;
    }
  }
    void display() {
    fill(0);
    ellipse(x,y,w,h);
  }
}