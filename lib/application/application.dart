
import 'package:flutter/material.dart';
import 'package:test_project/screens/home_screen.dart';


class Application extends StatelessWidget {
  const Application({super.key});




  // TESTSTTSTE

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}