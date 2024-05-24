// const Map<String, List<String>> encapsulation = {"code": [], "title": []};

const Map<String, dynamic> encapsulation = {
  "code": [
    """class Person {
// **Encapsulation: Use underscore make  private
// and provide public methods to access/modify them.
// **Library Scope: Private variables & methods are accessible only
// within the same library (file).
// **Controlled Access: Use public getters and setters for controlled access and validation.

  String _name; // private variable
  int _age; // private variable
  // Constructor
  Person(this._name, this._age);
  // Getter for name
  String get name => _name;
  // Getter for age
  int get age => _age;
  // Setter for age with validation
  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print('Age must be a positive value');
    }
  }
  // Method to display person details
  void displayInfo() { print('Name: \$_name, Age: \$_age'); }
} """,
    """ void main() {
// main.dart seprated file
  var person = Person('John Doe', 25);
  person.displayInfo(); // Output: Name: John Doe, Age: 25

  // Accessing public getter
  print('Name: \${person.name}'); // Output: Name: John Doe

  // Accessing and modifying using public setter
  person.age = 30;
  person.displayInfo(); // Output: Name: John Doe, Age: 30

  // Trying to access private variables directly will result in an error
  // print(person._name); // Error: The getter '_name' isn't defined for the class 'Person'.
  // person._age = 40; // Error: The setter '_age' isn't defined for the class 'Person'.
}"""
  ],
  "title": [
    "Encapsulation person.dart seprated file ",
    "Encapsulation main.dart seprated file ",
  ],
  "keywords": {
    "": [
      "underscore",
      "private Members",
      "Library Scope",
      "public getters ",
      "public setters",
      "access"
    ],
  }
};
