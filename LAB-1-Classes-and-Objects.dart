class Vehicle {
  String manufacturer;
  String type;
  int manufacturingYear;

  Vehicle(this.manufacturer, this.type, this.manufacturingYear);

  void makeSound() {
    print("Vroom Vroom");
  }
}

class ElectricVehicle extends Vehicle {
  int batteryCapacity = 100;

  ElectricVehicle(String manufacturer, String type, int manufacturingYear)
      : super(manufacturer, type, manufacturingYear);
}

void main() {
  Vehicle myVehicle = Vehicle('Toyota', 'Executive', 2002);

  print(myVehicle.manufacturer);
  print(myVehicle.type);
  print(myVehicle.manufacturingYear);

  myVehicle.makeSound();

  ElectricVehicle tesla = ElectricVehicle('Tesla', 'Plaid', 2002);
  print(tesla.manufacturer);
  print(tesla.batteryCapacity);
}
