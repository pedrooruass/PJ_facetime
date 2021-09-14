import 'package:facetime/src/screens/home_screen.dart';
import 'package:flutter/material.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FaceTime With Her",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
