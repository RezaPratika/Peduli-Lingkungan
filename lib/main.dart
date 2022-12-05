import 'package:capstone/common/style.dart';
import 'package:capstone/home_page.dart';
import 'package:capstone/presentation/ui_admin/gridview_admin.dart';
import 'package:capstone/presentation/ui_admin/homepage_admin/layout_builder_admin.dart';
import 'package:capstone/theme/font.dart';
import 'package:capstone/ui_user/home_page_user.dart';
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
        title: 'Peduli Lingkungan',
        theme: ThemeData(
          textTheme: myTextTheme,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: ColorSelect().primaryColor,
                onPrimary: ColorSelect().onPrimary,
                secondary: ColorSelect().secondaryColor,
              ),
        ),
        initialRoute: HomePage.rOUTENAME,
        routes: {
          HomePage.rOUTENAME: (context) => const HomePage(),
          HomePageUser.rOUTENAME: (context) => const HomePageUser(),
          ResponsivePage.rOUTENAME: (context) => const ResponsivePage(),
          GridviewAdmin.rOUTENAME: (context) => const GridviewAdmin(),
        });
  }
}
