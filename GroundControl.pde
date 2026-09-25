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

void keyReleased() {
    if (key == 'p' || key == 'P') {
        game.togglePause();
    }

    if (key == ',') {
        game.decreaseSimulationSpeed();
    }

    if (key == '.') {
        game.increaseSimulationSpeed();
    }
}
