import 'package:flutter/material.dart';
import 'paparan_utama.dart';
import 'pembaharuan_lesen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: PaparanUtama(), // Directly setting the home screen
      routes: {
        '/pembaharduan_lesen': (context) => PembaharuanLesen(),
      },
    );
  }
}
