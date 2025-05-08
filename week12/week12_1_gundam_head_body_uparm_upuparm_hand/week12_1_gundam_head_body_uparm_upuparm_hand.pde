// week12_1_gundam_head_body_uparm_upuparm_hand
// 修改自 week12_1_gundam_head_body_uparm_upuparm_hand
// 要加上 float [] angleX = new float[10]
// 要加上 float [] angleX = new
PShape body, head;
PShape uparm1, upuparm1, hand1; // week09_5
void setup(){
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj"); // week09_5
  hand1 = loadShape("hand1.obj"); // week09_5
}

void draw(){
  background(204);
  translate(200, 300);
  sphere(10); // 原點的球
  
  scale(10, -10, 10);
  
  shape(body, 0, 0);
  pushMatrix();
    translate(0, 22.5);
    rotateX(radians(mouseX-200));
    rotateX(radians(mouseY-60));
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();
  
  pushMatrix(); // left arm
  shape(upuparm1, 0, 0); // 上上手臂
  pushMatrix();
    translate(-4.1, 19.9); // 掛回原處
    rotateZ(radians(mouseX));
    translate(4.1, -19.9);
    shape(uparm1, 0, 0); // 上手臂
    pushMatrix();
      translate(-4.1, +16.9);
      rotateX(radians(mouseY));
      translate(4.1, -16.9);
      // translate(mouseX/10.0, -mouseY/10.0); // 邊移動 邊找數值
      // println(mouseX/10.0, -mouseY/10.0); // 4.5, -16.9
      shape(hand1, 0, 0); 
    popMatrix();
  popMatrix();
  popMatrix();
}
