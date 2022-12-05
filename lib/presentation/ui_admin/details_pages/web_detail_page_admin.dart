import "package:flutter/material.dart";

class WebDetailPageAdmin extends StatelessWidget {
  const WebDetailPageAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Screen width: ${screenSize.width.toStringAsFixed(2)}',
              style: const TextStyle(color: Colors.black, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              'Orientation: $orientation',
              style: const TextStyle(color: Colors.black, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset('images/logo-peduli-lingkungan.jpg'),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: FittedBox(
                      child: Container(
                          height: 40,
                          width: 300,
                          color: Colors.black,
                          child: FittedBox(
                            child: Text('Name',
                                style: TextStyle(color: Colors.white)),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Text('Deskripsi'),
            Text('Image'),
          ],
        ),
      ),
    );
  }
}
