

class World {

  ArrayList<City> cities;
  
  float worldWidth = 4000;
  float worldHeight = 2500;
  
  int nextCityId = 0;

  World() {
      cities = new ArrayList<City>();
      
      generateInitialCities();
  }

  void addCity(City city) {
      city.id = nextCityId;
      nextCityId++;
    
      cities.add(city);
  }
  
  void generateInitialCities() {
    addCity(new City(
      "Westfall",
      500,
      500,
      1800000,
      0.85,
      0.35
    ));
  
    addCity(new City(
      "Redmont",
      1800,
      400,
      950000,
      0.70,
      0.55
    ));
  
    addCity(new City(
      "Ironridge",
      1600,
      1500,
      620000,
      0.45,
      0.20
    ));
  
    addCity(new City(
      "Eastport",
      3300,
      600,
      2400000,
      0.95,
      0.30
    ));
  
    addCity(new City(
      "Sunvale",
      600,
      1900,
      1350000,
      0.65,
      0.75
    ));
  
    City northreach = new City(
      "Northreach",
      2100,
      900,
      410000,
      0.40,
      0.85
    );
    northreach.discovered = false;
    addCity(northreach);
  
    City greyhaven = new City(
      "Greyhaven",
      2800,
      1700,
      780000,
      0.60,
      0.45
    );
    greyhaven.discovered = false;
    addCity(greyhaven);
  
    City brightwater = new City(
      "Brightwater",
      1000,
      1100,
      290000,
      0.35,
      0.90
    );
    brightwater.discovered = false;
    addCity(brightwater);
  }
  
  int getCityCount() {
    return cities.size();
  }
  
  City getCityById(int id) {
    for (City city : cities) {
      if (city.id == id) {
        return city;
      }
    }
  
    return null;
  }
  
  City getCityByName(String name) {
    for (City city : cities) {
      if (city.name.equals(name)) {
        return city;
      }
    }
  
    return null;
  }
  
  void discoverCity(int cityId) {
    City city = getCityById(cityId);
  
    if (city != null) {
      city.discovered = true;
    }
  }

}
