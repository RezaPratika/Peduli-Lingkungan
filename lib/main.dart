import 'package:capstone/common/style.dart';
import 'package:capstone/home_page.dart';
import 'package:capstone/theme/font.dart';
import 'package:capstone/ui%20user/halamanutama.dart';
import 'package:capstone/ui%20admin/home_page_admin.dart';
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
        title: 'Peduli Lungkungan',
        theme: ThemeData(
          textTheme: myTextTheme,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: ColorSelect().primaryColor,
                onPrimary: ColorSelect().onPrimary,
                secondary: ColorSelect().secondaryColor,
              ),
        ),
        home: const HomePage());
  }
}
