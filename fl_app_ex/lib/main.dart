import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;
import 'expage.dart';

void main() {
  runApp(const ExApp());
}

class ExApp extends StatelessWidget {
  const ExApp({Key? key}) : super(key: key);

  


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExPage()
      );
  }
}
