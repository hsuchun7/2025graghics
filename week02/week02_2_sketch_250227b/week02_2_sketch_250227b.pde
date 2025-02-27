// week02_2_for_for_if_rect
size(400, 400); 
background(255);
fill(238);
noStroke();
float s = 400/14; // 計算每個格子大小
for(int i=0; i<14; i++){ // 左手 i 對應 y 座標
  for(int j=1; j<14; j++){ // 右手 j 對應 x 座標
    // rect(0, i*s*2, s, s);
    if( (i+j)%2==0 ) rect(j*s, i*s, s, s);
  } // 下面才是真正的程式碼，完成畫格子的任務
}
