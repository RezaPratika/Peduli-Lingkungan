import 'package:capstone/common/style.dart';
import 'package:capstone/ui_user/home_page_user.dart';
import 'package:capstone/presentation/ui_admin/homepage_admin/layout_builder_admin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const rOUTENAME = '/HOME';

  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ResponsivePage.rOUTENAME);
            },
            child: Text('Halaman Admin', style: styleText.button)),
        const SizedBox(width: 20),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                HomePageUser.rOUTENAME,
              );
            },
            child: Text('Halaman User', style: styleText.button))
      ]),
    );
  }
}
