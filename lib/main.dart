import "package:flutter/material.dart";
import "package:quiz_app/home_screen.dart";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 64, 11, 113),
        ),
        child: const HomeScreen(),
      ),
    ),
  ));
}
