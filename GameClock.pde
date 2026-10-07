class GameClock {

    // Simulation time in seconds.
    float totalSeconds = 0;

    // How fast simulation time passes relative to real time.
    float speed = 1.0;
    
    float maxSpeed = 134217728.0;

    void update(float realDeltaSeconds) {
        totalSeconds += realDeltaSeconds * speed;
    }

    int getDay() {
        return floor(totalSeconds / 86400.0);
    }

    int getHour() {
        return floor((totalSeconds % 86400.0) / 3600.0);
    }

    int getMinute() {
        return floor((totalSeconds % 3600.0) / 60.0);
    }

    int getSecond() {
        return floor(totalSeconds % 60.0);
    }
    
    void setSpeed(float newSpeed) {
      speed = newSpeed;
    }
    
    float getSpeed() {
        return speed;
    }
    void increaseSpeed() {
      speed = min(speed * 2.0, maxSpeed);
    }
    
    void decreaseSpeed() {
        speed = max(speed / 2.0, 1);
    }
    
    float getSimulationDelta(float realDeltaSeconds) {
      return realDeltaSeconds * speed;
    }
}
