class creator {

  void checkClose() {
    if (keyPressed && key == ' ') {
      saveData();
    }
    if (keyPressed) {
      try {
        loadMap(Integer.parseInt(key+""));
        println("loaded " + key);
      } 
      catch(Exception e) {
        println("Failed to load " + key);
      }
    }
  }
}
