import 'package:flutter/material.dart';
import 'package:flutter_application_data_science/barraNavegacion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BarraNavegacion(),
    );
  }
}
