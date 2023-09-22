import 'package:flutter/material.dart';

class calcular extends StatelessWidget {
  const calcular({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC App'),
        backgroundColor: Color.fromARGB(255, 55, 55, 55),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Bienvenido, seleccione su peso y altura'),
          ],
        ),
      ),
    );
  }
}