import 'dart:io';
import 'dart:math';

void main() {
  // Prompting the user for input
  stdout.write('Enter the radius of the sphere: ');

  // Reading the user's input as a string
  String? input = stdin.readLineSync();

  // Checking if the input is not null and can be converted to a double
  if (input != null) {
    try {
      // Parsing the input string to a double
      double radius = double.parse(input);

      // Calculating the volume of the sphere using the formula: V = (4/3) * π * r^3
      double volume = calculateSphereVolume(radius);

      // Displaying the result
      print('The volume of the sphere with radius $radius is $volume');
    } catch (e) {
      // Handling invalid input
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    // Handling null input
    print('No input provided. Please enter a valid number.');
  }
}

double calculateSphereVolume(double radius) {
  // Using the formula for the volume of a sphere: V = (4/3) * π * r^3
  return (4/3) * pi * pow(radius, 3);
}
