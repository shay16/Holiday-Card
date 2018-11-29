interface Snow{
  void move();
  void show();
}
PImage s;
PImage st;
void setup(){
size(500,500);
background (0,0,40);
s = loadImage("sleigh.jpg");
st = loadImage("star.jpg");
s.resize(275, 155);
noStroke();
ellipse(430, 470, 300,300);
rect(0,350, 500,150);
}
Snowstorm s1=new Snowstorm(100);
ShootingStars s2= new ShootingStars(10);
//Sleigh s=new Sleigh;
void draw(){
  background (0,0,40);
  ellipse(430, 470, 300,300);
  rect(0,350, 500,150);
  s2.show();
  image(s, mouseX,mouseY);
  s1.show();
 //Sleigh.show();
}




class ShootingStar{
  int startx, starty, x;
  ShootingStar(){
    startx=(int)(Math.random()*500);
    starty=(int)(Math.random()*100);
    x=startx;
  }
  
  void move(){
    x+=2;
    if(x-startx==100){
      startx=(int)(Math.random()*500);
      starty=(int)(Math.random()*100);
      x=startx;
    }
  }
  
  void show(){
    stroke(255,255,0);
    line(startx,starty,x,starty);
    ellipse(x,starty,5,2.5);
    ellipse(x,starty,2.5,5);
  }
}



class SnowDot implements Snow{
  int size;
  float x,y;
  SnowDot(int s){
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
    ellipse(x,y,size,size);
  }
}



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



class Snowstorm{
  Snow[] snowstorm;
  Snowstorm(int amount){
    snowstorm=new Snow[amount];
    int star=(int)((Math.random()*amount)+1);
    for(int i=0; i<star; i++){
      snowstorm[i]=new SnowStar((int)((Math.random()*10)+4));
    }
    for(int i=star; i<snowstorm.length; i++){
      snowstorm[i]=new SnowDot((int)((Math.random()*10)+4));
    }
  }
  void show(){
    fill(240,240,240);
    noStroke();
    for(int i=0; i<snowstorm.length; i++){
      snowstorm[i].move();
      snowstorm[i].show();
    }
  }
}






interface Snow{
  void move();
  void show();
}
PImage s;
PImage st;
void setup(){
size(500,500);
background (0,0,40);
s = loadImage("sleigh.jpg");
st = loadImage("star.jpg");
s.resize(275, 155);
noStroke();
ellipse(430, 470, 300,300);
rect(0,350, 500,150);
}
Snowstorm s1=new Snowstorm(100);
ShootingStars s2= new ShootingStars(10);
//Sleigh s=new Sleigh;
void draw(){
  background (0,0,40);
  ellipse(430, 470, 300,300);
  rect(0,350, 500,150);
  s2.show();
  image(s, mouseX,mouseY);
  s1.show();
 //Sleigh.show();
}

/*class Sleigh{
  int size;
  float x,y;
  Sleigh(int s){
    y=(float)(Math.random()*101);
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
    image(s, x,y);
  }
}

*/ //working on motion for sleigh
