interface Snow{
  void move();
  void show();
}
PImage s;
PImage sw;
PImage sa;

void setup(){
size(500,500);
background (0,0,40);
s = loadImage("sleigh.png");
s.resize(275, 155);
sw=loadImage("sw.png");
sw.resize(400,400);
sa=loadImage("santa.png");
sa.resize(110,100);
noStroke();
ellipse(430, 470, 300,300);
rect(0,350, 500,150);
}

Sleigh sl =new Sleigh();
Snowstorm s1=new Snowstorm(100);
Santa san=new Santa();
void draw(){
  background (0,0,40);
  ellipse(430, 470, 300,300);
  rect(0,350, 500,150);
  image(sw,-50,85);
  textSize(50);
  fill(255,0,0);
  text("Happy Holidays!",75,100);
 
  s1.show();
  sl.move();
  sl.show();
  san.move();
  san.show();
 
 
}