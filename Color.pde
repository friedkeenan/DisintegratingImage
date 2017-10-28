class Color{
  color col;
  float red,green,blue,alpha=255;
  boolean redUp=random(100)<50;
  boolean blueUp=random(100)<50;
  boolean greenUp=random(100)<50;
  boolean alphaUp=random(100)<50;
  Color(){
    red=random(256);
    green=random(256);
    blue=random(256);
    col=color(red,green,blue);
  }
  Color(float red_,float green_,float blue_){
    red=red_;
    green=green_;
    blue=blue_;
    col=color(red,green,blue);
  }
  Color(float red_,float green_,float blue_,float alpha_){
    red=red_;
    green=green_;
    blue=blue_;
    alpha=alpha_;
    col=color(red,green,blue,alpha);
  }
  Color(color col_){
    col=col_;
    red=red(col);
    green=green(col);
    blue=blue(col);
    alpha=alpha(col);
  }
  void changeColor(){
    changeColor(1,false);
  }
  void changeColor(float s){
    changeColor(s,false);
  }
  void changeColor(float s,boolean doAlpha){
    if(red(col)==255)
      redUp=false;
    if(red(col)==0)
      redUp=true;
    if(green(col)==255)
      greenUp=false;
    if(green(col)==0)
      greenUp=true;
    if(blue(col)==255)
      blueUp=false;
    if(blue(col)==0)
      blueUp=true;
    if(alpha(col)==255)
      alphaUp=false;
    if(alpha(col)==0)
      alphaUp=true;
    if(redUp)
      red+=s;
    else
      red-=s;
    if(greenUp)
      green+=s;
    else
      green-=s;
    if(blueUp)
      blue+=s;
    else
      blue-=s;
    if(doAlpha){
      if(alphaUp)
        alpha+=s;
      else
        alpha-=s;
    }
    col=color(red,green,blue,alpha);
  }
  Color invert(){
    return new Color(abs(red(col)-255),abs(green(col)-255),abs(blue(col)-255),alpha);
  }
  Color lerp(Color c,float lerp){
    return new Color(lerpColor(col,c.col,lerp));
  }
}