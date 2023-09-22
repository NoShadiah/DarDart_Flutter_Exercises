import 'dart:io';

void main() {
  // Prompting the user for input
  stdout.write('Enter the radius of the circle: ');

  // Reading the user's input as a string
  String? input = stdin.readLineSync();

  // Checking if the input is not null and can be converted to a double
  if (input != null) {
    try {
      // changing the input to a double
      double radius = double.parse(input);

      // Calculating the area of the circle using the formula: area = π * r^2
      double area = calculateCircleArea(radius);

      // Displaying the result
      print('You provided the are of the circle as $radius and its area is $area');
    } catch (e) {
      // Handling invalid input
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    // Handling null input
    print('No input provided. Please enter a valid number.');
  }
}

double calculateCircleArea(double radius) {
  // Using the formula for the area of a circle: π * r^2
  return 3.14 * radius * radius;
}
