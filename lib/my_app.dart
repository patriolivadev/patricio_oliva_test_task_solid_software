import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Main class
class MyApp extends StatelessWidget {
  ///Constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test Task',
      home: MyHomePage(),
    );
  }
}

///HomePage Class
class MyHomePage extends StatefulWidget {
  ///Constructor
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: InkWell(
        onTap: changeBackgroundColor,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          color: backgroundColor,
          child: const Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }


  void changeBackgroundColor() {
    setState(() {
      backgroundColor = getRandomColor();
    });
  }

  Color getRandomColor() {
    final Random random = Random();
    const randomLimit = 256;

    return Color.fromRGBO(
      random.nextInt(randomLimit),
      random.nextInt(randomLimit),
      random.nextInt(randomLimit),
      1,
    );
  }
}
