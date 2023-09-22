import 'package:flutter/material.dart';

class calcular extends StatefulWidget {
  const calcular({super.key});

  @override
  State<calcular> createState() => _calcularState();
}

class _calcularState extends State<calcular> {
double valuePeso=0;
double valueAltura=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC App'),
        backgroundColor: Color.fromARGB(255, 55, 55, 55),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: Text('Bienvenido, seleccione su peso y altura'),
            ),
            SizedBox(
              height: 40,
            ),
            Text("111 kg"),
            Slider(
              min: 0,
              max: 250,
              value: valuePeso,
              onChanged: (value){
                print(value);
                valuePeso=value;
                setState(() {});
              },
            ),
            SizedBox(
              height: 40,
            ),
            Text("180 cm"),
            Slider(
              min: 0,
              max: 250,
              value: valueAltura,
              onChanged: (value){
                print(value);
                valueAltura=value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}