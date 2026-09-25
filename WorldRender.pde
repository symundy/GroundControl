void renderWorld(World world, Camera camera) {
    background(40);

    pushMatrix();

    translate(width / 2, height / 2);
    scale(camera.zoom);
    translate(-camera.x, -camera.y);

    for (City city : world.cities) {

    if (city.discovered) {
          fill(255);
          circle(city.x, city.y, 12);
  
          fill(255);
          textAlign(CENTER);
          text(city.name, city.x, city.y - 15);
      } else {
          noFill();
          stroke(150);
          circle(city.x, city.y, 10);
  
          stroke(255);
          fill(255);
          textAlign(CENTER);
          text("???", city.x, city.y - 15);
  
          noStroke();
      }
    }

    popMatrix();
}
