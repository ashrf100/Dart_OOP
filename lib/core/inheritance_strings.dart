const Map<String, dynamic> inheritance = {
  "code": [
    """class Vehicle {
  // Superclass properties Subclass 
  String make;
  String model;
  int year;
  // Constructor to initialize properties
  Vehicle(this.make, this.model, this.year);
  // Superclass methods
  void startEngine() {
    print("Engine started");}
  void stopEngine() {
    print("Engine stopped"); }
  void honk() {
    print("Honk! Honk!"); }
}
// Car class inherits from Vehicle
class Car extends Vehicle {
  // Additional property for Car
  int numberOfDoors;
  // Constructor for Car
  Car(String make, String model, int year, this.numberOfDoors)
      : super(make, model, year);
  void drive() {
    print("Car is driving");}
}
// ElectricCar class inherits from Car
class ElectricCar extends Car {
  // Additional property for ElectricCar
  int batteryCapacity;
  // Constructor for ElectricCar
  ElectricCar(String make, String model, int year, int numberOfDoors, this.batteryCapacity)
      : super(make, model, year, numberOfDoors);

  void chargeBattery() {
    print("Battery is charging");}
}
 """,
    """ void main() {
  // Create an instance of ElectricCar
  ElectricCar tesla = ElectricCar("Tesla", "Model S", 2022, 4, 100);
  // Call inherited methods
  tesla.startEngine();  // From Vehicle
  tesla.drive();        // From Car
  tesla.chargeBattery();// From ElectricCar
  tesla.honk();         // From Vehicle
  tesla.stopEngine();   // From Vehicle
  // Print properties
  print("Make: \${tesla.make}, Model: \${tesla.model}, Year: \${tesla.year}");
  print("Doors: \${tesla.numberOfDoors}, Battery \${tesla.batteryCapacity} kWh");
}
// Key Points
// Single Inheritance: Car inherits from Vehicle.
// Multilevel Inheritance: ElectricCar inherits from Car, which inherits from Vehicle.
// Method Inheritance: Methods are inherited from the superclass, allowing reuse of code.

// Additional Notes
// Extending a class: Use `extends` to create a subclass that inherits methods and properties.
// Hierarchy: A subclass can itself be a superclass for another class.
// Polymorphism: You can use a subclass wherever the superclass is expected.
""",
  ],
  "title": [
    "inheritance Superclass vs Subclass  ",
    "inher , itance Key Points  ",
  ],
  "keywords": {
    "": [
      "Superclass",
      "Subclass",
      "inherits",
      "properties",
      "extends",
      "Single Inheritance ",
      "Multilevel Inheritance",
    ],
  }
};
