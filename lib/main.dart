import 'package:flutter/material.dart';
import 'Paginas/PaginaInicio.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash Flow App',
      home: PaginaInicio(),
    );
  }
}











