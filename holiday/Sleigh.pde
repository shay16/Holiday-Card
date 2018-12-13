class Sleigh{
  int size;
  float x,y;
  
  Sleigh(){
    y=(float)(Math.random()*101);
    x=(float)(Math.random()*201);
  }
  
  void move(){
    x+=(float)((Math.random()*.6)+.5);
    y+=(float)((Math.random()*.1)+.2);
    if (0>x){
      x=0;
    }
    else if(500<x){
      x=0;
    }
    if (0>y) {
      y=0;
    } 
    else if (400<y) {
      y=0;
    } 
  }
  

  void show(){
 
    image(s, x, y);
    
    
  }
}