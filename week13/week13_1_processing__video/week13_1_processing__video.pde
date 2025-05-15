// week13_1_processing__video
// Sketch - Library - Manage Libraries... 安裝video
// 教學
import processing.video.*; // Java 使用外掛的匯入
Capture video; // 有視訊鏡頭 用這個
Movie movie; // 沒有鏡頭 改用這個
void setup(){
  size(640, 960); // 常見的視訊
  // video = new Capture(this, 640, 480);
  // video.start(); // 打開視訊
  movie = new Movie(this, "street.mov"); // 讀檔案
  movie.loop();
}
void draw(){
  // if(video.available()) video.read();
  // image(video, 0, 0);
  if(movie.available()) movie.read();
  image(movie, 0, 0);
}
