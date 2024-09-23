import 'package:flutter/material.dart';
import 'package:gym_app/widgets/back_groundcolors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: const Stack(
        children: [
          BackGroundColors(),
        ],
      ),
    );
  }
}
