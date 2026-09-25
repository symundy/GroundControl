

class World {

    ArrayList<City> cities;
    
    float worldWidth = 4000;
    float worldHeight = 2500;

    World() {
        cities = new ArrayList<City>();
        
        generateInitialCities();
    }

    void addCity(City city) {
        cities.add(city);
    }
    
    void generateInitialCities() {
      addCity(new City("Westfall", 500, 500));
      addCity(new City("Redmont", 1800, 400));
      addCity(new City("Ironridge", 1600, 1500));
      addCity(new City("Eastport", 3300, 600));
      addCity(new City("Sunvale", 600, 1900));
      City northreach = new City("Northreach", 2100, 900);
      northreach.discovered = false;
      addCity(northreach);
      
      City greyhaven = new City("Greyhaven", 2800, 1700);
      greyhaven.discovered = false;
      addCity(greyhaven);
      
      City brightwater = new City("Brightwater", 1000, 1100);
      brightwater.discovered = false;
      addCity(brightwater);
    }
}
