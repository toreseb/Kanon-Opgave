class player extends objects{
  int cLength = 30;
  int cWidth = 5;
  
  
  void drawCanon(){
    this.cAnimation = new animation("kanon","png",1,1,0,0,700,300);
    rect(pos.x,pos.y,cLength,cWidth);
    
    
  }
  
  
  
}
