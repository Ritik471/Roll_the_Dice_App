import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer
        ( Color.fromARGB(255, 2, 151, 136),
          ( Color.fromARGB(255, 22, 39, 139)),
        ),
      ),
    ),
  );
}
