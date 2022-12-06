import 'package:admincapstone/component/laporan.dart';
import 'package:flutter/material.dart';

import '../common/style.dart';

class HomepagePemerintah extends StatefulWidget {
  static const routeName = '/homepage_pemerintah';
  const HomepagePemerintah({Key? key}) : super(key: key);

  @override
  State<HomepagePemerintah> createState() => _HomepagePemerintahState();
}

class _HomepagePemerintahState extends State<HomepagePemerintah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSelect().colorBackGround,
      appBar: AppBar(
        actions: <Widget>[
        ],
        backgroundColor: ColorSelect().appBarColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        )),
        title: const Text('Peduli Lingkungan'),
      ),
      body: Laporan(),
      );
  }
}