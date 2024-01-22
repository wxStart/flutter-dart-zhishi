enum PlanetType { terrestrial, gas, ice }

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  /// A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  bool get isGiant {
    print(111);
    return planetType == PlanetType.gas || planetType == PlanetType.ice;
  }
}

void main(List<String> args) {
  final yourPlanet = Planet.uranus;

  if (yourPlanet.isGiant) {
    print('是这一类属性');
  }
}
