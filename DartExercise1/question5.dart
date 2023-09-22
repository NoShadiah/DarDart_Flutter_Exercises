import 'dart:io';

void main() {
  stdout.write('Enter a sequence of comma-separated numbers: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    List<int> numbers = parseNumbers(input);
    print('List: $numbers');
    
    // Converting the list to a tuple (List)
    List<int> tuple = List.from(numbers);
    print('Tuple: $tuple');
  } else {
    print('No input provided.');
  }
}

List<int> parseNumbers(String input) {
  List<String> numberStrings = input.split(',');
  List<int> numbers = [];

  for (var numString in numberStrings) {
    try {
      int number = int.parse(numString.trim());
      numbers.add(number);
    } catch (e) {
      print('Invalid number: $numString');
    }
  }

  return numbers;
}
