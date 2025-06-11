PImage[] frame = new PImage[3];
PImage cursor;
PImage click;
int currentFrame = 0;
int delay = 1000;
boolean clicked = false;
int textBox;

void setup() {
  size(800, 600);
  noCursor();
  imageMode(CENTER);
  rectMode(CENTER);

  cursor = loadImage("start/cursor.png");//커서 바꿨음
  click = loadImage("start/click.png");

  frame[0] = loadImage("start/intro1.jpg");
  frame[1] = loadImage("start/intro2.jpg");
  frame[2] = loadImage("start/intro3.jpg");
}

void draw() {
  if (!clicked) {
    background(0);
    
    int currentFrame = (millis() / delay) % frame.length;
    image(frame[currentFrame], width/2, height/2);
    
    float cx = width / 2;
    float cy = height / 2;
    float hw = click.width / 2;
    float hh = click.height / 2;

   
    if (mouseX > cx - hw && mouseX < cx + hw &&
        mouseY > cy - hh && mouseY < cy + hh) {
      tint(255); 
    } else {
      tint(150); 
    }

    image(click, cx, cy);
    noTint(); 
  } else {
    background(0);
  }
  
  image(cursor, mouseX - 80, mouseY - 30); //커서 맞춤
}

void mousePressed() {
  float cx = width / 2;
  float cy = height / 2;
  float hw = click.width / 2;
  float hh = click.height / 2;

  if (mouseX > cx - hw && mouseX < cx + hw &&
      mouseY > cy - hh && mouseY < cy + hh) {
    home(); //1 분기점
  }
}

void home() {
  clicked = true;
  
}
