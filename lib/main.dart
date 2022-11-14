import 'package:capstone/theme/font.dart';
import 'package:capstone/ui/halamanutama.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(textTheme: myTextTheme),
      home: MainPage()
    );
  }
}

