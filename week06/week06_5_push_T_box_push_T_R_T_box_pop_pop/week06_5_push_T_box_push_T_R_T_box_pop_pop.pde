// week06_5_push_T_box_push_T_R_T_box_pop_pop
// 慢慢組合出機器手臂
void setup(){
  size(500, 400, P3D);
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10); 
  
  fill(252, 131, 77); 
  pushMatrix(); // step03
    translate(x,y); // step03
    box(200, 50, 25);
  
    pushMatrix();
      translate(100, 0); // step01 把前一步發現的 100，0 放好
      // if(mousePressed) rotateZ(radians(frameCount)); 
      rotateZ(radians(frameCount));  // step02 只轉動
      translate(25, 0, 0);
      box(50, 25, 50); 
    popMatrix(); 
  popMatrix();
}
float x = 0, y = 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + "y:" + y); 
}
