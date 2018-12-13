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