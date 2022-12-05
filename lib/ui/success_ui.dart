import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Image.asset('assets/success.png'),
            Text(
              "Laporan Anda Berhasil dikirim",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            Text(
              "Terimakasih telah menggunakan layanan kami",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  ElevatedButton(
                                onPressed: (() {
                                  Navigator.popAndPushNamed(context, '/homepageuser');
                                }),
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.greenAccent,
                                ),
                                child: Text("Kembali",
                                    style:
                                        Theme.of(context).textTheme.subtitle1)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
