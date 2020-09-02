class balls extends objects{
  
  int size = 50;
  
  
  balls(){
    pos.x = theP.pos.x+300*cos(theP.angle);
    pos.y = theP.pos.y+300*sin(theP.angle);
    vel.x = cos(theP.angle);
    vel.y = sin(theP.angle);
    objectList.add(this); 
  }
  
  void drawSelf(){
    pos.x += vel.x;
    pos.y += vel.y;
    

    ellipse(pos.x,pos.y,size,size);
  }
  void bTimer(){
    if (mousePressed){
      
    }
    
  }
  
}
