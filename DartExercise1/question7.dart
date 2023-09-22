import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    try {
      double number = double.parse(input);
      double difference = calculateDifference(number);
      print('The difference is: $difference');
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    print('No input provided.');
  }
}

double calculateDifference(double number) {
  const target = 17.0;
  double difference = (number > target) ? (number - target).abs() : (target - number);
  return difference;
}
