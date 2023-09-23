//import 'dart:html';

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
              child: Text('Bienvenido, seleccione su peso y altura',style: TextStyle(fontSize: 17),),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(
                    "${valuePeso.toInt()}",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                const Text(" Kg",
                  style: TextStyle(
                    color: Color.fromARGB(179, 0, 0, 0),
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.start
                ),
              ],
            ),
            Slider(
              min: 0,
              max: 230,
              divisions: 230,
              activeColor: Color.fromARGB(255, 251, 64, 129),
              inactiveColor: Colors.blueGrey,
              thumbColor: Color.fromARGB(255, 251, 64, 129),
              value: valuePeso,
              onChanged: (double value){
                setState(() {valuePeso=value;});
              },
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(
                    "${valueAltura.toInt()}",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                const Text(" cm",
                  style: TextStyle(
                    color: Color.fromARGB(179, 0, 0, 0),
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.start
                ),
              ],
            ),
            Slider(
              min: 0,
              max: 250,
              divisions: 250,
              activeColor: Color.fromARGB(255, 251, 64, 129),
              inactiveColor: Colors.blueGrey,
              thumbColor: Color.fromARGB(255, 251, 64, 129),
              value: valueAltura,
              onChanged: (double value){
                setState(() {valueAltura=value;});
              },
            ),
            SizedBox(
              height: 30,
            ),            
               Container(
                width: double.infinity,
                height: 50,
                color: Color.fromARGB(255, 60, 60, 60),
                child: ElevatedButton(
              onPressed: (){ }, 
              child: const Text("Calcular",style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 155, 35, 147),
                  
              ),
            ) ,
              ),
              Text("0"),
          ],
        ),
      ),
    );
  }
}