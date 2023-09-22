//6.Write a Dart program to print the calendar of a given month and year.
import 'dart:io';

void main() {
  print('Enter the month (1-12): ');
  var month = int.tryParse(stdin.readLineSync() ?? '');

  print('Enter the year: ');
  var year = int.tryParse(stdin.readLineSync() ?? '');

  if (month == null || month < 1 || month > 12 || year == null || year < 0) {
    print('Invalid input. Please enter valid month (1-12) and year.');
    return;
  }

  printCalendar(year, month);
}

void printCalendar(int year, int month) {
  DateTime firstDay = DateTime(year, month, 1);
  DateTime lastDay = DateTime(year, month + 1, 0);
  int startWeekday = firstDay.weekday;

  // Printing header
  print(' Sun Mon Tue Wed Thu  Fri  Sat');

  // Printing leading spaces
  for (int i = 0; i < startWeekday; i++) {
    stdout.write('    ');
  }

  // Printing days
  for (int day = 1; day <= lastDay.day; day++) {
    stdout.write('${day.toString().padLeft(4)}');
    startWeekday = (startWeekday + 1) % 7;
    if (startWeekday == 0 || day == lastDay.day) {
      print('');
    } else {
      stdout.write('');
    }
  }
}