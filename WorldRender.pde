void renderWorld(World world, Camera camera, City selectedCity) {
    background(40);

    pushMatrix();

    translate(width / 2, height / 2);
    scale(camera.zoom);
    translate(-camera.x, -camera.y);

    for (City city : world.cities) {

    if (city.discovered) {
        fill(255, 40);
        circle(city.x, city.y, city.getDiameter());

        fill(255);
        textAlign(CENTER);
        text(city.name, city.x, city.y - 15);
      } else {
        noFill();
        stroke(150);
        circle(city.x, city.y, city.getDiameter());

        stroke(255);
        fill(255);
        textAlign(CENTER);
        text("???", city.x, city.y - 15);

        noStroke();
      }
      if (city == selectedCity) {
        noFill();
        stroke(255);
        strokeWeight(3);
    
        circle(
            city.x,
            city.y,
            city.getDiameter() + 12
        );
    
        strokeWeight(1);
        noStroke();
      }
    }

    popMatrix();
    
    renderCityInfo(selectedCity);
}

void renderCityInfo(City city) {
  if (city == null) {
    return;
  }
  
  fill(20, 220);
  rect(20, 20, 280, 125);
  
  fill(255);
  textAlign(LEFT, TOP);
  
  textSize(20);
  text(city.name, 35, 35);
  
  textSize(14);
  text(city.getEconomicSummary(), 35, 65);
}
