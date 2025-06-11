PImage[] frames = new PImage[3];
int currentFrame = 0;
int frameDelay = 1000; // 1000ms = 1초
int lastFrameChangeTime = 0;

void setup() {
  size(800, 600); // 원하는 해상도 설정

  // 이미지 불러오기
  frames[0] = loadImage("intro1.jpg"");
  frames[1] = loadImage("image2.png");
  frames[2] = loadImage("image3.png");

  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(255); // 흰색 텍스트
}

void draw() {
  background(0); // 검은 배경

  // 시간 체크 후 프레임 변경
  if (millis() - lastFrameChangeTime > frameDelay) {
    currentFrame = (currentFrame + 1) % frames.length;
    lastFrameChangeTime = millis();
  }

  // 이미지 표시
  image(frames[currentFrame], width/2, height/2);

  // 중앙 텍스트 표시
  text("중앙 텍스트 예시", width/2, height/2);
}
