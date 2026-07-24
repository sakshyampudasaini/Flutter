// ignore_for_file: avoid_print

// --- Part b: Student Class Definition ---
class Student {
  String name;
  int age;

  // Constructor
  Student(this.name, this.age);

  // Method to display student information
  void displayData() {
    print('--- Student Details ---');
    print('Name: $name');
    print('Age: $age');
  }
}

void main() {
  print('=== Part B: Student Class ===\n');

  // Create an object of Student class
  Student student1 = Student('A', 20);

  // Display object data
  student1.displayData();
}