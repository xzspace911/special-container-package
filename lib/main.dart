import 'package:flutter/material.dart';
import 'package:special_container/special_container.dart';

void main() {
  runApp(const ExampleApp());
}

/// A simple example app demonstrating [SpecialContainer].
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpecialContainer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExampleHomePage(),
    );
  }
}

/// The main home page showing different [SpecialContainer] examples.
class ExampleHomePage extends StatelessWidget {
  const ExampleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpecialContainer Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Example 1: Default container
            const SpecialContainer(),

            const SizedBox(height: 20),

            // Example 2: Custom color and radius
            SpecialContainer(
              height: 120,
              radius: 20,
              color: Colors.green,
              child: const Text(
                'Green container with radius 20',
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),

            // Example 3: Custom width, height, and child widget
            SpecialContainer(
              height: 150,
              width: 200,
              color: Colors.blue,
              radius: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.white, size: 32),
                  SizedBox(height: 8),
                  Text(
                    'Star Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Example 4: Container with default child text replaced
            SpecialContainer(
              color: Colors.purple,
              radius: 12,
              child: const Text(
                'Custom child text',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
