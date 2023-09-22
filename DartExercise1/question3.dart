import 'dart:io';

void main() {
  stdout.write('Enter a positive integer: ');

  // Reading the user's input as a string
  String? input = stdin.readLineSync();

  // Checking if the input is not null and can be converted to an integer
  if (input != null) {
    try {
      int number = int.parse(input);

      if (number <= 0) {
        print('Please enter a positive integer greater than 0.');
      } else {
        // Calculating the sum of positive integers below and including the entered number
        int sum = calculateSumOfPositiveIntegers(number);

        // Displaying the result
        print('The sum of positive integers up to $number is: $sum');
      }
    } catch (e) {
      // Handling invalid input
      print('Invalid input. Please enter a valid positive integer.');
    }
  } else {
    // Handling null input
    print('No input provided. Please enter a valid positive integer.');
  }
}

int calculateSumOfPositiveIntegers(int n) {
  // Calculating the sum using the formula: sum = (n * (n + 1)) / 2
  return (n * (n + 1)) ~/ 2;
}
