import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'common/style.dart';
import 'ui/homepageadmin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCVbcayg6dU5GVIGM4IxCw27GtdmBymJxg",
          appId: "1:292080878831:web:0de16aae097e8ebb6d471a",
          messagingSenderId: "292080878831",
          projectId: "peduli-lingkungan-11dba"));
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
          textTheme: styleText,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: ColorSelect().primaryColor,
                onPrimary: ColorSelect().onPrimary,
                secondary: ColorSelect().secondaryColor,
              ),
        ),
      home: const HomepagePemerintah(),
    );
  }
}
