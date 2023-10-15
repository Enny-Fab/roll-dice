import 'package:flutter/material.dart';

import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 135, 8, 154),
            Color.fromARGB(255, 90, 11, 160)
          ],
        ),
      ),
    ),
  );
}
