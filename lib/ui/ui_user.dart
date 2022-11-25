import 'package:capstone/ui/success_ui.dart';
import 'package:flutter/material.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({super.key});

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String nama = '';
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bodywidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Stack(
            children: [
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
                          'images/logo-peduli-lingkungan.jpg',
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
                    height: 45,
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
                            child: const Center(
                              child: SizedBox(
                                child: Text('Gambar'),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Sertakan Gambar",
                          style: Theme.of(context).textTheme.subtitle1,
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
                            validator: (nama){
                              if (nama!.isEmpty ){
                                return 'Tolong input nama kamu';
                              }
                              else if (nama!.isNotEmpty && nama!.length < 3){
                                return 'Tolong input nama dengan minimal 3 huruf';
                              }
                              else {
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
                        maxLines: null,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: Colors.black)),
                          hintText: 'Lokasi',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: const Icon(Icons.location_on),
                        ),
                        validator: (lokasi){
                              if (lokasi!.isEmpty ){
                                return 'Tolong berikan Lokasi anda';
                              }
                              else {
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: Colors.black)),
                          hintText: 'No Hp',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: const Icon(Icons.phone),
                        ),
                        validator: (noHp){
                              if (noHp!.isEmpty ){
                                return 'Tolong berikan Nomor HP anda';
                              }
                              else {
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
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: "Deskripsi Masalah",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                          validator: (des){
                              if (des!.isEmpty ){
                                return 'Tolong berikan Deskirpsi Masalah anda';
                              }
                              else {
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
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    isChecked = value!;
                                    setState(() {
                                    });(value);
                                  }),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  child: Text(
                                      "Saya Menyatakan Laporan diatas benar",
                                      style:
                                          Theme.of(context).textTheme.bodyText1),
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
                                onPressed: (() {
                                  final isValidForm = _formKey.currentState!.validate();
                                  if (isValidForm){
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SuccessScreen()),
                                  );
                                  }
                                }),
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.greenAccent,
                                ),
                                child: Text("Lapor",
                                    style:
                                        Theme.of(context).textTheme.subtitle1))),
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
}
