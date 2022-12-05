import 'package:capstone/presentation/ui_admin/gridview_admin.dart';
import 'package:capstone/presentation/ui_admin/homepage_admin/widget_home_page_admin.dart';
import "package:flutter/material.dart";

class ResponsivePage extends StatelessWidget {
  static const rOUTENAME = '/respon';
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return WidgetHomePageAdmin();
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            return GridviewAdmin();
          }
        },
      ),
    );
  }

  List<Widget> _generateContainers() {
    return List<Widget>.generate(20, (index) {
      return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.blueGrey,
        height: 200,
      );
    });
  }
}
