import 'package:flutter/material.dart';
import 'package:gym_app/widgets/back_groundcolors.dart';
import 'package:gym_app/widgets/navigation_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: CustomNavigationDrawer(selectedMenuItem: 'Home',
      ),
      body: const Stack(
        children: [
          BackGroundColors(),
        ],
      ),
    );
  }
}
