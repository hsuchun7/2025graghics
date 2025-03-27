// week06_7_push_RRT_many_TRT_inside_pop
// 慢慢組合出機器手臂
void setup(){
  size(500, 800, P3D); // step00: 視窗拉長 看比較完整
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10); 
  
  fill(252, 131, 77);  
  pushMatrix(); 
    if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount)); // step02
    if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount)); // step02
    translate(0,-100); //translate(x,y); // step01: 抬升
    box(50, 200, 25); // 手臂
    pushMatrix();
      translate(0,-100); // step00: 掛在手臂上
      // if(mousePressed) // step00: delete
      rotateZ(radians(frameCount));
      translate(100,0); 
      box(200, 50, 25); // 手肘
    
      pushMatrix();
        translate(100, 0); 
        rotateZ(radians(frameCount)); 
        translate(25, 0, 0);
        box(50, 25, 50); 
      popMatrix();
    popMatrix(); 
  popMatrix();
}
float x = 0, y = 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + "y:" + y); 
}
