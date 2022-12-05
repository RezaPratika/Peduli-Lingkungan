import 'package:capstone/data/sumber.dart';
import 'package:capstone/presentation/ui_admin/detail_page_admin.dart';
import 'package:flutter/material.dart';

class GridviewAdmin extends StatelessWidget {
  static const rOUTENAME = '/gridview';
  const GridviewAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: entries.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemBuilder: (BuildContext context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetailPageAdmin()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.amber[colorCodes[index]],
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Center(child: Text('Entry ${entries[index]}')),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
