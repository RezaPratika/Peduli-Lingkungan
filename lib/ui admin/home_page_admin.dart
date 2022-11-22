import 'package:capstone/widget%20admin/widget_home_page_admin.dart';
import 'package:flutter/material.dart';

class HomepagePemerintah extends StatefulWidget {
  static const routeName = '/homepage_pemerintah';
  const HomepagePemerintah({Key? key}) : super(key: key);

  @override
  State<HomepagePemerintah> createState() => _HomepagePemerintahState();
}

class _HomepagePemerintahState extends State<HomepagePemerintah> {
  @override
  Widget build(BuildContext context) {
    return const WidgetHomePageAdmin();
  }
}
