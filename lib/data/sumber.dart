import 'package:flutter/material.dart';

final controllerScroll = ScrollController();

final List<String> entries = <String>[
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L'
];
final List<int> colorCodes = <int>[
  600,
  500,
  100,
  600,
  500,
  100,
  600,
  500,
  100,
  600,
  500,
  100
];

class Note {
  late int? id;
  late String title;
  late String description;

  Note({this.id, required this.title, required this.description});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }

  Note.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    description = map['description'];
  }
}
