class SnowStar implements Snow{
  int size;
  float x,y;
  SnowStar(int s){
    y=(float)(Math.random()*501);
    x=(float)(Math.random()*501);
    size=s;
  }
  
  void move(){
    x+=(float)((Math.random()*.4)+.2);
    y+=(float)((Math.random()*.4)+.8);
    if(x>=width){
      x=0;
    }
    if(y>=height-100){
      y=0;
    }
  }
  void show(){
    ellipse(x,y,size,size/2);
    ellipse(x,y,size/2,size);
  }
}