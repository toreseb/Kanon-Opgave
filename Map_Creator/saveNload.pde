int fileN = 0;

void saveData() {
  String[] saveText = new String[text.size()];
  for (int i= 0; i < text.size(); i ++) {
    saveText[i] = text.get(i);
  }

  saveStrings("map"+fileN+".txt", saveText);
  exit();
}

void loadData() {
  String[] mapData = loadStrings("map"+fileN+".txt");
  try {
    for (String i : mapData) {
      print(i);
    }
    println();
    fileN ++;
  } 
  catch (Exception e) {
    println("It Dont Exist");
  }
}
