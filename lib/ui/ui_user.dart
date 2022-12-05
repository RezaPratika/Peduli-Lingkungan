import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../component/checkbox.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({super.key});

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  XFile? file;
  TextEditingController namaController = TextEditingController();
  TextEditingController lokasiController = TextEditingController();
  TextEditingController nomorhpController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  bool checkBoxValue = false;

  String? imagePath;

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference laporan = firestore.collection('laporan');
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bodywidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: Stack(children: [
        CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffd8e8ff),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  height: bodyHeight * 0.2,
                  width: bodywidth,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logo-peduli-lingkungan.jpg',
                        ),
                        Flexible(
                          child: Text(
                            "Peduli Lingkungan",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 90,
                          height: 50,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(color: Colors.black)),
                            color: const Color(0xff52a392),
                            child: TextButton(
                                onPressed: () async {
                                  file = await ImagePicker()
                                      .pickImage(source: ImageSource.gallery);
                                  if (file != null) {
                                    imagePath = file!.path;
                                    setState(() {});
                                  }
                                },
                                child: Text("Gambar",
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.greenAccent)),
                          ),
                        ),
                        (imagePath != null)
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    width: bodywidth * 0.5,
                                    child: Image.file(File(imagePath!))),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      'assets/add-image.png',
                                    ),
                                  ),
                                ),
                              )
                      ],
                    ),
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      color: Colors.white,
                      child: TextFormField(
                        controller: namaController,
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Colors.red)),
                            hintText: 'Nama',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            prefixIcon: const Icon(Icons.people)),
                        validator: (nama) {
                          if (nama!.isEmpty) {
                            return 'Tolong isi nama anda';
                          } else if (nama!.isNotEmpty && nama!.length < 3) {
                            return 'Tolong isi nama dengan minimal 3 huruf';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      color: Colors.white,
                      child: TextFormField(
                        controller: lokasiController,
                        maxLines: null,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          hintText: 'Lokasi',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: const Icon(Icons.location_on),
                        ),
                        validator: (lokasi) {
                          if (lokasi!.isEmpty) {
                            return 'Tolong isi dengan lokasi anda';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      color: Colors.white,
                      child: TextFormField(
                        controller: nomorhpController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          hintText: 'No Hp',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: const Icon(Icons.phone),
                        ),
                        validator: (noHp) {
                          if (noHp!.isEmpty) {
                            return 'Tolong isi dengan nomor HP anda';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                ]),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: TextFormField(
                          controller: deskripsiController,
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: "Deskripsi Masalah",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                          validator: (des) {
                            if (des!.isEmpty) {
                              return 'Tolong berikan Deskirpsi Masalah anda';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                    Container(
                        height: 60,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CheckBoxForm(),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  child: Text(
                                      "Saya Menyatakan Laporan diatas benar",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                Expanded(
                  child: Container(
                    height: bodyHeight * 0.2,
                    width: bodywidth,
                    decoration: const BoxDecoration(
                        color: Color(0xffd8e8ff),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    child: ListView(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ElevatedButton(
                                onPressed: (() async {
                                  final isValidForm =
                                      _formKey.currentState!.validate();
                                  if (isValidForm) {
                                    if (imagePath == null) {
                                      return _editAlert();
                                    } else {
                                      Reference referenceRoot =
                                          FirebaseStorage.instance.ref();
                                      Reference referenceDirImages =
                                          referenceRoot.child('gambar');

                                      Reference referenceImageToUpload =
                                          referenceDirImages.child(
                                              DateTime.now().toString() +
                                                  ".jpg");

                                      try {
                                        await referenceImageToUpload
                                            .putFile(File(file!.path));
                                        imagePath = await referenceImageToUpload
                                            .getDownloadURL();
                                      } catch (e) {}
                                      laporan.add({
                                        'nama': namaController.text,
                                        'lokasi': lokasiController.text,
                                        'nomorhp': nomorhpController.text,
                                        'deskripsi': deskripsiController.text,
                                        'gambar': imagePath,
                                      });
                                      Navigator.pushReplacementNamed(
                                          context, '/success');
                                    }
                                  }
                                }),
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.greenAccent,
                                ),
                                child: Text("Lapor",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ]),
    ));
  }

  _editAlert() {
    var _alert = AlertDialog(
      title: Text('Mohon diperhatikan'),
      content: Text('Tolong untuk menambahkan bukti foto/gambar'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Kembali'))
      ],
    );
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return _alert;
        });
  }
}
