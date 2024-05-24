const Map<String, dynamic> polymorphism = {
  "code": [
    """ 
class Employee {
  // Polymorphism is the ability of an object to take on many forms
  //  overriding technique create method in subclass class
  // that has the same name as the method in the superclass class.

  void salary() {
    print("Employee salary is \$1000.");
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Manager salary is \$2000.");
  }
}

class Developer extends Employee {
  void salary() {
    print("Developer salary is \$3000.");
  }
}

void main() {
  Manager manager = Manager();
  Developer developer = Developer();

  manager.salary(); //  output "Manager salary is \$2000."
  developer.salary(); //  outpt "Employee salary is \$1000."
}
"""
  ],
  "title": [" Polymorphism "],
  "keywords": {
    "": [
      "object on many forms",
      "overriding technique ",
      " method in subclass",
      " same name method"
    ],
  }
};
