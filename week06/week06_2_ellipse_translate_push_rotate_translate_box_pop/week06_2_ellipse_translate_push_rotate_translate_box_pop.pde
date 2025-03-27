// week06_2_ellipse_translate_push_rotate_translate_box_pop
// 再加1個移動，把物體放到[旋轉中心]
void setup(){
  size(500, 500, P3D);
}
void draw(){
  background(142);
  ellipse(width/2, height/2, 200, 200);
  
  translate(width/2, height/2); // 把東西放正中心
  pushMatrix(); // 第五周教過的Matrix保護
    if(mousePressed) rotateZ(radians(frameCount)); 
    translate(-50, 0, 0); //棒子左移
    box(100, 30, 30); // 橫的棒子
  popMatrix(); // 第五周教過的Matrix保護
}
