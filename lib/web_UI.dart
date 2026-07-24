import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIT UI App',
      home: Scaffold(
        // Background color requirement
        backgroundColor: Colors.teal.shade50,
        
        // AppBar with title requirement
        appBar: AppBar(
          title: const Text('BIT Student Dashboard'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image / Icon requirement
              const Icon(
                Icons.school,
                size: 80,
                color: Colors.teal,
              ),
              const SizedBox(height: 20),
              
              // Centered Text "Welcome BIT Student" requirement
              const Text(
                'Welcome BIT Student',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 20),
              
              // Button requirement
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                child: const Text(
                  'Click Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}