
import 'package:flutter/material.dart';

class calcular extends StatefulWidget {
  const calcular({super.key});

  @override
  State<calcular> createState() => _calcularState();
}

class _calcularState extends State<calcular> {
double valuePeso=0;
double valueAltura=0;
double imc=0;
String result="---";
void calculateIMC() {
    setState(() {
      imc = valuePeso / ((valueAltura / 100) * (valueAltura / 100));
      if (imc<=18.5) {
        result="Estas por debajo del indice saludable";
      }else if(imc>18.5 && imc<=24.9){
         result="Estas  saludable";
      }else if(imc>25 && imc<=29.9){
         result="Estas con sobrepeso";
      }else if(imc>30.0){
         result="Estas con obesidad";
      }
    });
  }

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
                    "${valuePeso.toStringAsFixed(2)}",
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
                    "${valueAltura.toStringAsFixed(2)}",
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
              onPressed: (){ 
                calculateIMC();
              }, 
              child: const Text("Calcular",style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 155, 35, 147),
                  
              ),
            ) ,
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Resultado:",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ),
              SizedBox(height: 10,),
              Container(
                child: Text(
                  "${imc.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 160, 40, 100)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Text(
                  result,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                )
              )
          ],
        ),
      ),
    );
  }
}