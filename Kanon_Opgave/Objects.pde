ArrayList<objects> objectList = new ArrayList<objects>();
ArrayList<objects> removeList = new ArrayList<objects>();
ArrayList<balls> ballList = new ArrayList<balls>();
ArrayList<target> targetList = new ArrayList<target>();

class objects {
  String dataName = "NO DATANAME PLZ FIX";
  float size;
  PVector pos = new PVector();
  PVector vel = new PVector();
  PVector acc = new PVector();
  animation cAnimation;
  
  void drawSelf() { 
  }
}


void cleanUp() {
  for (objects i: removeList) {
    objectList.remove(i);
  }
  
}
