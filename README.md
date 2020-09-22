# kawakudari_processing

This project implements part of the [std15.h](https://github.com/IchigoJam/c4ij/blob/master/src/std15.h) API (from [c4ij](https://github.com/IchigoJam/c4ij)) with [Processing](https://processing.org/), and [Kawakudari Game](https://ichigojam.github.io/print/en/KAWAKUDARI.html) on top of it.

It will allow programming for [IchigoJam](https://ichigojam.net/index-en.html)-like targets that display [IchigoJam FONT](https://mitsuji.github.io/ichigojam-font.json/) on screen using a Java-like programming language.



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
    std15.scroll(Std15.UP);

    if (std15.scr(x, 5)!='\0') {
      std15.locate(0,23);
      std15.putstr("Game Over...");
      std15.putnum(frameCount);
      running = false;
    }
  }
  std15.drawScreen();

}
```

## Prerequisite

[Download](https://processing.org/download/) and install Processing application suitable for your environment.


## License
[![Creative Commons License](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)
[CC BY](https://creativecommons.org/licenses/by/4.0/) [mitsuji.org](https://mitsuji.org)

This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

