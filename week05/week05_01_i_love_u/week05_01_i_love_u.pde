// week05_01_i_love_u
size(300, 300); // 大小 300*300
stroke(255, 0, 0); // 紅線
for(int xx=0; xx<300; xx++){
  for(int yy=0; yy<300; yy++){
    float x = (xx-150) / 100.0; // 減一半，除100
    float y = -(yy-150) / 100.0; // 減一半，除100
    // 0...300 變 -150..+150 變 -1.5 ~ +1.5
    float d = x*x + y*y -1;
    if(d*d*d - x*x*y*y*y < 0) point(xx, yy);
  }
}
