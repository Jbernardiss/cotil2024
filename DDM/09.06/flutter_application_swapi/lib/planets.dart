class Planets {

  String name = "";
  String rotationPeriod = "";
  String orbitalPeriod = "";
  String diameter = "";
  String climate = "";

  Planets();

  Planets.fromJson(Map<String, dynamic> json)
        : name = json['name'],
          rotationPeriod = json['rotation_period'],
          orbitalPeriod = json['orbital_period'],
          diameter = json['diameter'],
          climate = json['climate']
          ;

  String get getName => this.name;

  set setName(String name) => this.name = name;

  get getRotationPeriod => this.rotationPeriod;

  set setRotationPeriod( rotationPeriod) => this.rotationPeriod = rotationPeriod;

  get getOrbitalPeriod => this.orbitalPeriod;

  set setOrbitalPeriod( orbitalPeriod) => this.orbitalPeriod = orbitalPeriod;

  get getDiameter => this.diameter;

  set setDiameter( diameter) => this.diameter = diameter;

  get getClimate => this.climate;

  set setClimate( climate) => this.climate = climate;
  
}