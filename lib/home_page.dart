import 'package:capstone/common/style.dart';
import 'package:capstone/ui%20admin/home_page_admin.dart';
import 'package:capstone/ui%20user/halamanutama.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomepagePemerintah()),
              );
            },
            child: Text('Halaman Admin', style: styleText.button)),
        const SizedBox(width: 20),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePageUser()),
              );
            },
            child: Text('Halaman User', style: styleText.button))
      ]),
    );
  }
}
