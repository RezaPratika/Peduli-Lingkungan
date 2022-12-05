import 'package:capstone/common/style.dart';
import 'package:capstone/ui/ui_user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'ui/success_ui.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Peduli Lungkungan',
        initialRoute: '/',
        routes: {
          '/homepageuser': (context) => const HomePageUser(),
          '/success': (context) => const SuccessScreen(),
        },
        theme: ThemeData(
          buttonTheme: ButtonThemeData(
            buttonColor: ColorSelect().buttonColor
          ),
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
