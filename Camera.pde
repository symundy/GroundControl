class Camera {

    float x;
    float y;
    float zoom;

    Camera() {
        x = 0;
        y = 0;
        zoom = 1.0;
    }
    
    void move(float dx, float dy) {
      x += dx;
      y += dy;
    }
    
    void constrainToWorld(float worldWidth, float worldHeight) {
      float halfWidth = width / (2.0 * zoom);
      float halfHeight = height / (2.0 * zoom);
  
      x = constrain(x, halfWidth, worldWidth - halfWidth);
      y = constrain(y, halfHeight, worldHeight - halfHeight);
    }
}
