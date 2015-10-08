PImage enemyImage;
PImage fighterImage;
PImage hpImage;
PImage treasureImage;
PImage bg1Image;
PImage bg2Image;

int x1, y1;
int x2, y2;
int x3, y3;
int x4, y4;
int w;
int x5;

void setup () {
  size(640,480) ;
  bg1Image = loadImage("img/bg1.png"); 
  bg2Image = loadImage("img/bg2.png"); 
  x1 = 0;
  y1 = 400;
  enemyImage = loadImage("img/enemy.png");
  x2 = 570;
  y2 = 200;
  fighterImage = loadImage("img/fighter.png");
  x3 = 10;
  y3 = 10;
  hpImage = loadImage("img/hp.png");
  w = floor(random(20,215));
  x4 = 300;
  y4 = 300;
  x4 = floor(random(640));
  y4 = floor(random(480));
  treasureImage = loadImage("img/treasure.png");
}

void draw() {
  x5 ++;
  x5 %= 640;
  image(bg1Image,x5,0);
  image(bg2Image,x5-640,0);
  x1 +=5;
  x1 %= 640;
  image(enemyImage,x1,y1);
  image(fighterImage,x2,y2);
  fill(255,0,0);
  stroke(255,0,0);
  rectMode(CORNERS);
  rect(20,15,w,30);
  image(hpImage,x3,y3);
  image(treasureImage,x4,y4);
}
