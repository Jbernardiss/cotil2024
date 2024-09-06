class Starships {

  String name = "";
  String model = "";
  String manufacturer = "";
  String costInCredits = "";
  String lenght = "";

  Starships();

  Starships.fromJson(Map<String, dynamic> json)
        : name = json["name"],
          model = json["model"],
          manufacturer = json["manufacturer"],
          costInCredits = json["cost_in_credits"],
          lenght = json["length"]
          ;



  String get getName => this.name;

  set setName(String name) => this.name = name;

  get getModel => this.model;

  set setModel( model) => this.model = model;

  get getManufacturer => this.manufacturer;

  set setManufacturer( manufacturer) => this.manufacturer = manufacturer;

  get getCostInCredits => this.costInCredits;

  set setCostInCredits( costInCredits) => this.costInCredits = costInCredits;

  get getLenght => this.lenght;

  set setLenght( lenght) => this.lenght = lenght;
}