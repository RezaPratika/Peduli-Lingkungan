import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../common/style.dart';

class Laporan extends StatefulWidget {
  const Laporan({super.key});

  @override
  State<Laporan> createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSelect().colorBackGround,
      body: Container(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("laporan").snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) => Container(
                          child: Table(
                        border: TableBorder.all(),
                        children: [
                          TableRow(
                            children: [
                            Text(
                              'Nama',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              'Lokasi',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              'Nomor HP',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              'Deskripsi',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              'Gambar',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                snapshot.data!.docs[index]['nama'],
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                snapshot.data!.docs[index]['lokasi'],
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(snapshot.data!.docs[index]['nomorhp'],
                                  style: Theme.of(context).textTheme.bodyText1),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  snapshot.data!.docs[index]['deskripsi'],
                                  style: Theme.of(context).textTheme.bodyText1),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                imageUrl: snapshot.data!.docs[index]['gambar'],
                                fit: BoxFit.cover,
                                placeholder: ((context, url) =>
                                    CircularProgressIndicator()),
                                errorWidget: ((context, url, error) =>
                                    Icon(Icons.error)),
                              ),
                            ),
                          ]),
                        ],
                      )));
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
