Game game;

void setup() {
  size(1280, 720);
  pixelDensity(2);
  
  game = new Game();
}

void draw() {
  game.update();
  game.render();
}
