import 'package:flutter/material.dart';
import 'package:gym_app/views/home_view.dart';
import 'package:gym_app/views/system_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'ProtestGuerrilla-Regular',
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
         SystemView.id: (context) => const SystemView(),
      },
      home: const HomeView(),
    );
  }
}
