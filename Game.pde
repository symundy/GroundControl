
class Game {
  
  GameClock clock;
  
  GameState state = GameState.PLAYING;
  
  int lastMillis;
  
  Game() {
    clock = new GameClock();
    lastMillis = millis();
  }
  
  void update() {
    int currentMillis = millis();
    float realDeltaSeconds = (currentMillis - lastMillis) / 1000.0;
    lastMillis = currentMillis;

    if (state == GameState.PLAYING) {
        clock.update(realDeltaSeconds);
    }

    switch (state) {
    case MENU:
        updateMenu();
        break;

    case PLAYING:
        updatePlaying();
        break;

    case PAUSED:
        updatePaused();
        break;
    }
  }
  
  void render() {
        switch (state) {
        case MENU:
            renderMenu();
            break;

        case PLAYING:
            renderPlaying();
            break;

        case PAUSED:
            renderPaused();
            break;
        }
    }

    void updateMenu() {
        // Menu logic will go here.
    }

    void updatePlaying() {
        // Game simulation will go here.
    }

    void updatePaused() {
        // Paused-game logic will go here.
    }

    void renderMenu() {
        background(30);
    }

    void renderPlaying() {
      background(30);
  
      fill(255);
      textAlign(LEFT, TOP);
      textSize(24);
  
      String time = String.format(
          "Day %d — %02d:%02d:%02d",
          clock.getDay() + 1,
          clock.getHour(),
          clock.getMinute(),
          clock.getSecond()
      );
  
      text(time, 20, 20);
    }

    void renderPaused() {
        background(30);

        fill(255);
        textAlign(CENTER, CENTER);
        textSize(32);
        text("PAUSED", width / 2, height / 2);
    }

    void togglePause() {
        if (state == GameState.PLAYING) {
            state = GameState.PAUSED;
        } else if (state == GameState.PAUSED) {
            state = GameState.PLAYING;
        }
    }
    
    void increaseSimulationSpeed() {
      clock.increaseSpeed();
    }
    
    void decreaseSimulationSpeed() {
        clock.decreaseSpeed();
    }
}
