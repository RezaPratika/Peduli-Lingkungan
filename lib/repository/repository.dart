import 'package:dio/dio.dart';
import 'dart:io';
import 'package:flutter/material.dart';

import '../model/laporan.dart';

//import 'package:http/http.dart' as http;

/*class Repository {
  final _baseUrl =
      'https://6389b1ea4eccb986e897a59a.mockapi.io/peduli-lingkungan';

  Future postData(String nama, String lokasi, String nomorhp, String deskripsi) async {
    try {
      final response = await http.post(Uri.parse(_baseUrl + '/laporan'), body: {
        "nama": nama,
        "lokasi": lokasi,
        "nomorhp": nomorhp,
        "deskripsi": deskripsi,
      });
      print(response);
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}*/

abstract class Repository {
  static Future<Laporan?> createLaporan(String nama,String lokasi, String nomorhp, String deskripsi ) async {
    try{
      var response = await Dio().post('https://6389b1ea4eccb986e897a59a.mockapi.io/laporan', data: {
        'nama': nama,
        'lokasi': lokasi,
        'nomorhp': nomorhp,
        'deskripsi':deskripsi,

      });

      if (response.statusCode==201){
        return Laporan(nama: response.data['nama'], lokasi: response.data['lokasi'],nomorhp: response.data['nomorhp'],deskripsi: response.data['deskripsi']);
      }
      return null;
    }
    
    catch(e){
      throw Exception(e.toString());
    }
  }
}