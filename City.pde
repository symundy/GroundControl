class City {

  String name;
  float x;
  float y;
  float population;
  
  float economicStrength;
  float growthRate;
  
  int id;

  boolean discovered;

  City(String name, float x, float y, int population, float economicStrength, float growthRate) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.population = population;
    this.economicStrength = economicStrength;
    this.growthRate = growthRate;
    this.discovered = true;
  }
  
  float getDiameter() {
    return map(population, 290000, 2400000, 10, 100);
  }
  
  String getEconomicSummary() {
    return
      "Population: " + int(population) +
      "\nEconomic Strength: " + nf(economicStrength, 1, 2) +
      "\nGrowth Rate: " + nf(growthRate, 1, 2) + "%" +
      "\nDemand Potential: " + nf(getDemandPotential(), 0, 0);
  }
  
  boolean isDiscovered() {
      return discovered;
    }
    
  void update(float deltaSeconds) {
    float yearsPassed = deltaSeconds / (365.0 * 24.0 * 60.0 * 60.0);
  
    if (yearsPassed <= 0) {
      return;
    }
  
    population *= pow(1.0 + growthRate * 0.01, yearsPassed);
    population = max(1, population);
  }
  float getDemandPotential() {
    return population * economicStrength;
  }
  float getDailyDemandPotential() {
    return getDemandPotential() * 0.001;
  }

}
