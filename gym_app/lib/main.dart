import 'package:flutter/material.dart';
import 'package:gym_app/views/home_view.dart';

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
      theme: ThemeData.dark(),
      routes: {
        HomeView.id: (context) => const HomeView(),
      },
      home: const HomeView(),
    );
  }
}
