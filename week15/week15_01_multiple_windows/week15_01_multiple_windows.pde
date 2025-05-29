// week15_01_multiple_windows
// google: processing multiple windows
// File > Example > Demos > Tests > MultipleWindows 
void setup(){
  size(300, 200);
  background(255, 0, 0);
  WindowB child = new WindowB();
}
void draw(){
}
//以下獨立執行
class WindowB extends PApplet{
  public WindowB(){
    super();
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }
  public void settings(){
    size(300, 200);
  }
  public void setup(){
    // size(300, 200);
    background(0, 255, 0);
  }
  public void draw(){ //空白 要放!
  }
}
