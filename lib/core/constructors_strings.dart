const Map<String, dynamic> constructors = {
  "code": [
    """class ConstConstructorsPage extends StatelessWidget {
  // Const constructor to create an immutable object.
  // Only the key parameter from the superclass (StatelessWidget) is passed.
  // const MyConstructorsPage({super.key});
  // This key helps Flutter manage the widget in the widget tree.
  
  const ConstConstructorsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
} """,
    """ class ParameterizedConstructorPage extends StatelessWidget {
  final String name;
  //constructor that takes parameters
  //to initialize the object with specific values.
  const ParameterizedConstructorPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
    );
  }
}""",
    """ class NamedConstructorPage extends StatelessWidget {
  String firstName;
  String secondName;
  //normalParameterized Constructo
  NamedConstructorPage({
    required this.firstName,
    required this.secondName,
  });
  // Named Constructor A constructor with a specific name,
  // To offer different ways to create and initialize an object
  NamedConstructorPage.name({
    this.firstName = "ashrf",
    required this.secondName,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
      "{\$firstName \$secondName}",
    )));
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NamedConstructorPage(
        firstName: "ashrf",
        secondName: 'atia',
      ),
      NamedConstructorPage.name(
        secondName: 'atia',
      )
    ]);
  }
}""",
    """void main() {
  runApp(MaterialApp(
      home: CustomWidget(
          title: 'Hello, World!',
           subtitle: 'Welcome to Flutter')));
}

 class BaseWidget extends StatelessWidget {
  final String title;
  BaseWidget({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Base Widget')),
    );
  }
}

class CustomWidget extends BaseWidget {
  final String subtitle;
  //a super constructor is used to call the constructor of a superclass
  // (the class from which the current class inherits).
  // useful when pass parameters to the superclass
  // or perform some initialization in the superclass before the subclass does its own initialization
  CustomWidget({required this.subtitle, required String title})
      : super(title: title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Title: \$title'),
              Text('Subtitle: \$subtitle'),
            ],
          ),
        ));
  }
}""",
    """ class User {
  final String name;
  final int age;

  // Regular constructor
  User(this.name, this.age);

  //Factory constructors have more control over object creation
  //They can return new instances or existing instances based on logic

  // Factory constructor for creating a User from JSON data
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['name'] as String,
      json['age'] as int,
    );
  }
  // Factory constructor for creating a User from a CSV string
  factory User.fromCsv(String csv) {
    var parts = csv.split(',');
    return User(
      parts[0],
      int.parse(parts[1]),
    );
  }
  @override
  String toString() {
    return 'User(name: \$name, age: \$age)';
  }
}

void main() {
  // Creating a User from JSON
  var jsonUser = User.fromJson({'name': 'Alice', 'age': 30});
  print(jsonUser); // Output: User(name: Alice, age: 30)
  // Creating a User from CSV
  var csvUser = User.fromCsv('Bob,25');
  print(csvUser); // Output: User(name: Bob, age: 25)
}""",
  ],
  "title": [
    "Const Constructor",
    "Parameterized Constructor",
    "Named Constructor",
    "super constructor",
    "Factory constructors"
  ],
  "keywords": {
    "": ["special method", "initialize an object"],
    "Parameterized Constructor": ["specific values"],
    "Named Constructor": ["multiple constructors"],
    "Constant constructor": ["immutable object"],
    "Factory constructor": ["return based on logic"],
    "super constructor": ["calling superclass constructor"]
  }
};
