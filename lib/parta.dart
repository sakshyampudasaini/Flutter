// ignore_for_file: avoid_print
import 'dart:io';

void main() {
  print('=== Part A: Calculator ===');
  
  // Input first number
  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  // Input second number
  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Calculations & Display Results
  print('\n--- Results ---');
  print('Addition: ${num1 + num2}');
  print('Subtraction: ${num1 - num2}');
  print('Multiplication: ${num1 * num2}');
  
  if (num2 != 0) {
    print('Division: ${num1 / num2}');
  } else {
    print('Division: Cannot divide by zero!');
  }
}