class Santa{
  int size;
  float x;
  
  Santa(){
    x=(float)(Math.random()*501);
  }
  
  void move(){
    x+=(float)((Math.random()*.7)+.2);
    
    if (0>x){
      x=0;
    }
    else if(500<x){
      x=0;
    }
 
  }
  

  void show(){
 
    image(sa, x, 375);
    
    
  }
}