import 'dart:math';
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
      title: 'Q8 AnimatedContainer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const AnimatedContainerPage(),
    );
  }
}

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 150;
  double _height = 150;
  Color _color = Colors.teal;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(12);

  void _changeContainer() {
    final random = Random();

    setState(() {
      _width = random.nextInt(200).toDouble() + 100;
      _height = random.nextInt(200).toDouble() + 100;
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1.0,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Q8: AnimatedContainer'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const Center(
                child: Icon(Icons.star, color: Colors.white, size: 36),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _changeContainer,
              icon: const Icon(Icons.palette),
              label: const Text('Animate Size & Color'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}