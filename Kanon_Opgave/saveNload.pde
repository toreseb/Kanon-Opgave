creator mapCreator = new creator();
class creator {
  void checkMapChange() {
    if (keyPressed) {
      try {
        println("tryin to load" + key);
        loadMap(Integer.parseInt(key+""));
        println("loaded " + key);
      } 
      catch(Exception e) {
        println("Failed to load " + key);
      }
    }
  }
}

void saveData() {
  int fileN = 0;
  boolean stillSearch = true;
  //TEST FILE AMOUNT
  while (stillSearch) {
    String[] mapData = loadStrings("map"+fileN+".txt");
    try {
      for (String i : mapData) {
        print(i);
      }
      println();
      fileN ++;
    } 
    catch (Exception e) {
      stillSearch =false;
    }
  }

  String[] saveText = new String[objectList.size()];
  for (int i=0; i < objectList.size(); i++) {
    saveText[i] = objectList.get(i).dataName + "," +objectList.get(i).pos.x + "," + objectList.get(i).pos.y +"," + objectList.get(i).size;
  }

  saveStrings("map"+fileN+".txt", saveText);
  println("saved as: map" + fileN);
  exit();
}

void loadMap(int mapN) {
  objectList.clear();
  objectList.add(theP);
  objectList.add(score);
  String[] mapData = loadStrings("map"+mapN+".txt");
  for (String i : mapData) {
    String type = "";
    String getXS = "";
    String getYS = "";
    String getSizeS = "";
    int l=0;
    while (i.charAt(l) != ',') {
      type += i.charAt(l);
      l++;
    }
    println(type);
    l++;
    while (i.charAt(l) != ',') {
      getXS += i.charAt(l);
      l++;
    }
    l++;
    while (i.charAt(l) != ',') {
      getYS += i.charAt(l);
      l++;
    }
    l++;
    while (l != i.length()) {
      getSizeS += i.charAt(l);
      l++;
    }
    l++;
    float getX = Float.parseFloat(getXS);
    float getY = Float.parseFloat(getYS);
    float getSize = Float.parseFloat(getSizeS);
    if (type.equals("planet")) {
      new planet(getX, getY, getSize);
    }
    if (type.equals("target")) {
      new target(getX, getY, getSize);
    }
  }
}
