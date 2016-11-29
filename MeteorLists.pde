//creating class meteorlists
class MeteorLists {
  float x,y,w,h;
//Constructor
  MeteorLists(float mouseX, float mouseY,float tempw, float temph) {
    x = mouseX;
    y = mouseY;
    w = tempw;
    h = temph;
  }
  //methods of this class: fall & display
  void fall(){
    //adds
    y = y + 5;
  }
    void display() {
    stroke(0);
    noFill();
    ellipse(x,y,w,h);
  }
}