class _Student {
  String _name; // Private attribute
  int _age;    // Private attribute

  // Constructor to initialize the private attributes
  _Student(this._name, this._age);

  // Getter methods to access private attributes
  String get name => _name;
  int get age => _age;

  // Setter methods to update private attributes
  set name(String name) => _name = name;
  set age(int age) => _age = age;

  // Method to display student information
  void displayInfo() {
    print('Name: $_name, Age: $_age');
  }
}

void main() {
  // Creating instances of the private class
  final student1 = _Student('Alice', 20);
  final student2 = _Student('Bob', 22);

  // Accessing and displaying student information
  student1.displayInfo();
  student2.displayInfo();

  // Updating student information using setter methods
  student1.name = 'Eve';
  student2.age = 25;

  // Displaying updated information
  student1.displayInfo();
  student2.displayInfo();
}
