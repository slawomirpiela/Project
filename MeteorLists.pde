class MeteorLists {
  float x,y,s,g,w,a;
//Constructor
  MeteorLists(float mouseX, float mouseY) {
    x = mouseX;
    y = mouseY;
    s = 0;
    g = 0.1;
  }
  void fall(){
    s = s + g;
    y = y + s;
    if (y > height) {
    s = s * -0.8;
    y = height;
    }
  }
    void display() {
    fill(0,255);
    ellipse(x,y,w,w);
  }
}