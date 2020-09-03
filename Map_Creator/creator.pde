class creator {
  
  void checkClose() {
    if (keyPressed && key == ' ') {
      saveData();
    }
    if (keyPressed) {
      if (key == '0') {
        loadMap(0);
      }
    }
    
  }
  
}
