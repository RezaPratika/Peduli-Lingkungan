import 'package:capstone/common/style.dart';
import 'package:capstone/ui/user_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Peduli Lungkungan',
        theme: ThemeData(
          textTheme: myTextTheme,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: ColorSelect().primaryColor,
                onPrimary: ColorSelect().onPrimary,
                secondary: ColorSelect().secondaryColor,
              ),
        ),
        home: const HomePageUser()
        );
  }
}
