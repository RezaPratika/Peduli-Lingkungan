import 'package:capstone/common/style.dart';
import 'package:capstone/data/sumber.dart';
import 'package:flutter/material.dart';

class HomepagePemerintah extends StatefulWidget {
  static const routeName = '/homepage_pemerintah';
  const HomepagePemerintah({Key? key}) : super(key: key);

  @override
  State<HomepagePemerintah> createState() => _HomepagePemerintahState();
}

class _HomepagePemerintahState extends State<HomepagePemerintah> {
  bool onTaped =
      false; //boolean used to handle container animation which expands from the FAB
  int selectedIndex =
      0; //to handle which item is currently selected in the bottom app bar
  String text = "Home";
  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text = buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: const Text('Peduli Lingkungan')),
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
                      child: Text('Laporan Terbaru', style: styleText.button)),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('Laporan Selesai', style: styleText.button)),
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
                      return Column(
                        children: [
                          Container(
                            height: 70,
                            width: 180,
                            color: Colors.amber[colorCodes[index]],
                            child:
                                Center(child: Text('Entry ${entries[index]}')),
                          ),
                        ],
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
