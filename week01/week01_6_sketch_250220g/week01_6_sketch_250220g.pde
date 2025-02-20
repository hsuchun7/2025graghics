// week01-6_PImage_loadImage_background
//請先用小畫家，做出400乘400 的 cute.png
//再從檔案總管裡，把cute.png 圖檔，{拉到程式裡}
PImage img = loadImage("cute.png");
size(400,400); // 尺寸要與圖檔相同
background(img); //才能在背景顯示
