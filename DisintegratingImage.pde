PImage img;
float strength=2500;
Color lerp=new Color();
void mouseWheel(MouseEvent event){
  strength-=100*event.getCount();
  if(strength<0)
    strength=0;
}
void settings(){
  size(100,100);
}
void setup(){
  img=loadImage("test.jpg");
  surface.setSize(img.width,img.height);
}
void draw(){
  set(0,0,img);
  for(int x=0;x<width;x++){
    for(int y=0;y<height;y++){
      if(random(100)<strength/dist(x,y,mouseX,mouseY)){
        set(x,y,(new Color(get(x,y))).invert()/*.lerp(new Color(random(128),random(128),random(128)),random(.5,1))*/.col);
      }
    }
  }
  //lerp.changeColor(16);
}