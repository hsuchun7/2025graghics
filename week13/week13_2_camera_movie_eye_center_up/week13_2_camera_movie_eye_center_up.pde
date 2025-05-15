// week13_2_camera_movie_eye_center_up
// 電腦圖學繪圖時 會設定 camera 的相關係數
import processing.video.*;
Movie movie;
void setup(){
  size(720, 480, P3D); // 要加 P3D 才有OpenGL 3D 功能
  movie = new Movie(this, "street.mov");
  movie.loop(); // 迴圈播放
}
void draw(){
  background(128);
  camera(mouseX, mouseY, 500, 360, 240, 0, 0, 1, 0);

  if(movie.available()) movie.read(); //有新畫面就讀入
  image(movie, 0, 0);
}
