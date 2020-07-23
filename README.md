# kawakudari_processing

This project implements part of the [std15.h](https://github.com/IchigoJam/c4ij/blob/master/src/std15.h) API (from [c4ij](https://github.com/IchigoJam/c4ij)) with [Processing](https://processing.org/), and [Kawakudari Game](https://ichigojam.github.io/print/en/KAWAKUDARI.html) on top of it.

It will allow programming for [IchigoJam](https://ichigojam.net/index-en.html)-like targets using a Java-like programming language.
```
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
  std15.PAppletDraw();
}
```

## Prerequisite

[Download](https://processing.org/download/) and install Processing application suitable for your environment.

