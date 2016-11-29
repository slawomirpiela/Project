
class Star
{
  String name;
  float xpos, ypos, size;
  
  Star(TableRow row){
    name = row.getString("Name");
    xpos = row.getFloat("X");
    ypos = row.getFloat("Y");
    size = row.getFloat("");
  }
  
  String toString(){
    return name
      + "," + xpos
      + "," + ypos
      + "," + size;
  }
  
}