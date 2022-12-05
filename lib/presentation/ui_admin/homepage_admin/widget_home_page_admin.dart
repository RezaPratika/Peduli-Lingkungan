import 'package:capstone/data/sumber.dart';
import 'package:capstone/presentation/ui_admin/detail_page_admin.dart';
import 'package:flutter/material.dart';
import 'package:capstone/common/style.dart';

class WidgetHomePageAdmin extends StatelessWidget {
  const WidgetHomePageAdmin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        color: ColorSelect().primaryColor,
        onPressed: () {},
        icon: Icon(Icons.add_circle),
        iconSize: 40,
      ),
      backgroundColor: ColorSelect().colorBackGround,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.change_circle),
            iconSize: 40,
            color: ColorSelect().primaryColor,
          )
        ],
        backgroundColor: ColorSelect().appBarColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        )),
        title: const Text('Peduli Lingkungan'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Laporan Terbaru',
                        style: styleText.button,
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Laporan Selesai',
                        style: styleText.button,
                      )),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 167, 167, 167),
              ),
              SizedBox(
                height: 800,
                width: 800,
                child: ListView.builder(
                    controller: controllerScroll,
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailPageAdmin()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 180,
                              color: Colors.amber[colorCodes[index]],
                              child: Center(
                                  child: Text('Entry ${entries[index]}')),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
