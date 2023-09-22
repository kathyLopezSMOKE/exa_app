import 'package:flutter/material.dart';
import 'package:exa_app/calcular_page.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: calcular(),
    );
  }
}