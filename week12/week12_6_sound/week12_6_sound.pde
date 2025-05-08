// week12_6_sound
// 要有聲音 需要有聲音的 library 函式庫
// Sketch- Library -Managed Libraries 找 sound 會看到
// Sound | Provides a simple way to work with audio
// 選它 右下角 Install (有小勾)
// 安裝好後會有 File - Examples 點開 Libraries核心函式庫
// Soundfile 範例 看 SimplePlayBack 簡單播放
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400, 400);
  mySound = new SoundFile(this, "music.mp3");
  mySound.play();
}
void draw(){
  
}
