
Std15 std15;

boolean running = true;
int x = 15;

void setup () {
  size(512, 384);
  std15 = new Std15(512, 384, 32, 24);
}

void draw () {
  if (!running) return;

  if (frameCount % 5 == 0) {
    if (keyPressed) {
      if (keyCode == LEFT)  --x;
      if (keyCode == RIGHT) ++x;
    }

    std15.locate(x, 5);
    std15.putc('0');
    std15.locate(floor(random(32)), 23);
    std15.putc('*');

    std15.scroll();

    if (std15.scr(x, 5)!='\0') {
      running = false;
    }
  }
  //  delay(100);
  std15.PAppletDraw();
}
