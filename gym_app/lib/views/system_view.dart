import 'package:flutter/material.dart';
import 'package:gym_app/widgets/back_groundcolors.dart';
import 'package:gym_app/widgets/navigation_drawer.dart';
import 'package:gym_app/widgets/system_items.dart';

class SystemView extends StatelessWidget {
  const SystemView({super.key});
  static String id = 'SystemView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: CustomNavigationDrawer(selectedMenuItem: 'System',
        
      ),
      body: Stack(
        children:const [
          BackGroundColors(),
          SystemItems()
        ],
      ),
    );
  }
}
