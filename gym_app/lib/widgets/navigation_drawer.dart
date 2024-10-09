import 'package:flutter/material.dart';
import 'package:gym_app/views/home_view.dart';
import 'package:gym_app/views/system_view.dart';
import 'package:gym_app/widgets/active_indicator_text.dart';
import 'package:gym_app/widgets/user_info.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({super.key, required this.selectedMenuItem});
  final String selectedMenuItem;

  @override
  _CustomNavigationDrawerState createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  late String selectedMenuItem;

  @override
  void initState() {
    super.initState();
    selectedMenuItem = widget.selectedMenuItem;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserInfo(),

          TextButton(
            onPressed: () {
              setState(() {
                selectedMenuItem = 'Home';
              });
              Navigator.pop(context);
              Navigator.pushReplacementNamed(
                context,
                HomeView.id,
                arguments: {'selectedMenuItem': 'Home'},
              );
            },
            child: ActiveIndicatorText(
              item: 'Home',
              isActive: selectedMenuItem == 'Home',
            ),
          ),

         
          TextButton(
            onPressed: () {
              setState(() {
                selectedMenuItem = 'System';
              });
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                SystemView.id,
                arguments: {'selectedMenuItem': 'System'},
              );
            },
            child: ActiveIndicatorText(
              item: 'System',
              isActive: selectedMenuItem == 'System',
            ),
          ),
        ],
      ),
    );
  }
}
