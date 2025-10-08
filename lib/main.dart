import 'package:flutter/material.dart';
import 'package:paradice/myhomepage.dart';
import 'package:paradice/dice.dart';
import 'package:paradice/dicepool.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Para'Dice"),
    );
  }
}
