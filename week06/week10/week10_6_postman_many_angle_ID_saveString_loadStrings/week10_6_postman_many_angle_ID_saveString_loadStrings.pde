// week10_6_postman_many_angle_ID_saveString_loadStrings
PImage postman, head, body, uparm1, hand1, uparm2, hand2;
float [] angle = new float[20]; // 準備20個關節
int ID = 0; // 現在要處理的關節 ID (第幾個關節)
void mouseDragged(){
  angle[ID] += mouseX- pmouseX;
} //記得拉圖檔進來
void keyPressed(){
  if(key=='1') ID = 1; // 左邊手臂
  if(key=='2') ID = 2; // 左邊手
  if(key=='3') ID = 3; // 右邊手臂
  if(key=='4') ID = 4; // 右邊手
  if(key=='5') ID = 5; // (待用)
  if(key=='6') ID = 6; // (待用)
  if(key=='0') ID = 0; // 頭
  
  if(key=='s'){ // 從這裡開始
    String now = ""; // 要放現在全部關節的值
    for(int i=0; i<=20; i++){ // 利用 for 迴圈
      now += angle[i] + " "; // 全部塞進 now
    }
    lines.add(now); // 把現在這行 加到 line 裡面
    String [] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt", arr);
  }
  if(key=='r'){ // replay
    if(R<lines.size()){
     float [] now = float(split( lines.get(R), ' '));
     for(int i=0; i<20; i++) angle[i] = now[i];
     R = (R+1) % lines.size();
    }
  }
}
int R = 0; 
ArrayList<String> lines = new ArrayList<String>(); // 放移動的結果
// 到這裡結束
void setup(){
  size(560, 560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  hand1 = loadImage("hand1.png");
  uparm2 = loadImage("uparm2.png");
  hand2 = loadImage("hand2.png");
}
void draw(){
  background(#FFFFF2);
  image(postman, 0, 0); // 基礎郵差身體(全身)
  fill(255, 0, 255, 128); // 半透明的紫色
  rect(0, 0, 560, 560); // 蓋上去
  pushMatrix();
    translate(+185, +261);
    rotate(radians(angle[1]));
    translate(-185, -261);
    image(uparm1, 0, 0); // 上手臂
    pushMatrix();
      translate(+116, +265);
      rotate(radians(angle[2]));
      translate(-116, -265);
      image(hand1, 0, 0); // 上手肘
    popMatrix();
  popMatrix();
  
 pushMatrix();
    translate(290, 262);
    rotate(radians(angle[3]));
    translate(-290, -262);
    image(uparm2, 0, 0); 
      translate(357, 259);
      rotate(radians(angle[4]));
      translate(-357, -259);
      image(hand2, 0, 0); 
  popMatrix();
  
  pushMatrix();
    translate(+236, +231); // 再放回正確位置
    rotate(radians(angle[0]));
    translate(-236, -231); // 把頭的旋轉中心 放到(0,0)
    image(head, 0, 0); // 再畫頭
  popMatrix();
  image(body, 0, 0); // 再畫身體
}
