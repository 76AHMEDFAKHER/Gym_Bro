import 'dart:ui';
import 'package:flutter/material.dart';

class BackGroundColors extends StatelessWidget {
  const BackGroundColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 45, 23, 144),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 400,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(600),
              color: const Color.fromARGB(255, 122, 28, 172),
              shape: BoxShape.rectangle,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              color: Color.fromARGB(251, 23, 21, 59),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 250,
            width: 250,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 59, 31, 185),
              shape: BoxShape.circle,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
          child: Container(
            color: Colors.transparent,
          ),
        )
      ],
    );
  }
}
