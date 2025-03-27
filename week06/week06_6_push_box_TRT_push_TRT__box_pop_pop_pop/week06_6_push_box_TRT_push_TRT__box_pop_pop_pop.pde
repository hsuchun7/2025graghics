// week06_6_push_box_TRT_push_TRT__box_pop_pop_pop
// 慢慢組合出機器手臂
void setup(){
  size(500, 400, P3D);
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10); 
  
  fill(252, 131, 77);  
  pushMatrix(); 
    box(50, 200, 25); // step03: arm
    pushMatrix();
      translate(x,y); // step03: 掛到手臂上面
      if(mousePressed) rotateZ(radians(frameCount));
      translate(100,0);  // step01
      box(200, 50, 25); // 手肘
    
      pushMatrix();
        translate(100, 0); 
        rotateZ(radians(frameCount)); 
        translate(25, 0, 0);
        box(50, 25, 50); 
      popMatrix();
    popMatrix(); 
  popMatrix(); // step04 pop
}
float x = 0, y = 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + "y:" + y); 
}
