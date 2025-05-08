// week12_4_gundam_head_body_push_trt_again
// 修改自 week12_3_gundam_head_body_uparm_upuparm_hand_left_keyPressed_ID
PShape body, head;
PShape uparm1, upuparm1, hand1; // week09_5
void setup(){
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
}
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0; // 0:頭，1:上上手臂，2:上手臂，3:手
void mouseDragged(){
  angleX[ID] += radians(mouseX - pmouseX); // 左右拖曳
  angleY[ID] += radians(mouseY - pmouseY); // 上下拖曳
}
void keyPressed(){ //小心 注音輸入法
  if(key=='1') ID = 1; // 還沒設定好 上上手臂
  if(key=='2') ID = 2; // OK 上手臂
  if(key=='3') ID = 3; // OK 手
  if(key=='4') ID = 4;
  if(key=='5') ID = 5;
  if(key=='6') ID = 6;
  if(key=='7') ID = 7;
  if(key=='8') ID = 8;
  if(key=='9') ID = 9;
  if(key=='0') ID = 0;  // ok 頭
}
void draw(){
  background(204);
  translate(200, 300);
  sphere(10); // 原點的球
  
  scale(10, -10, 10);
  
  shape(body, 0, 0);
  pushMatrix();
    translate(0, 22.5);
    rotateX(angleY[0]);
    rotateY(angleX[0]);
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();
  
  pushMatrix(); // left arm
    translate(-2.9, 20.8); 
    rotateY(angleX[1]);
    rotateX(angleY[1]);
    translate(2.9, -20.8); 
    shape(upuparm1, 0, 0); // 上上手臂
    pushMatrix();
      translate(-4.1, 19.9); // 掛回原處
      rotateZ(angleY[2]);
      rotateY(angleX[2]);
      translate(4.1, -19.9);
      shape(uparm1, 0, 0); // 上手臂
      pushMatrix();
        translate(-4.1, +16.9);
        rotateZ(angleY[3]);
        rotateY(angleX[3]);
        translate(4.1, -16.9);
        // translate(mouseX/10.0, -mouseY/10.0); // 邊移動 邊找數值
        // println(mouseX/10.0, -mouseY/10.0); // 4.5, -16.9
        shape(hand1, 0, 0); 
      popMatrix();
    popMatrix();
  popMatrix();
}
