import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//||||Clase puma
class Puma extends StatefulWidget {
  const Puma({Key? key}) : super(key: key);

  @override
  PumaState createState() => PumaState();
  //los _ antes de l nombre significan privadas
  //por defecto las clases son publicas y no es ncesario escribirlas

  ///desde fuera del widget Puma
  ///basicamente tmb funciona si los llamamos sin _ pero es por temas de legibilidad
  ///
  ///
} //

//||||||||||||||||||||||

//||||||||||||||||||||||
class PumaState extends State<Puma> {
  int number = 0; // Variable de estado

  @override
  Widget build(BuildContext context) {
    /// solo puede existir un widget en una clase :V
    //CUBO
    //|||||||||||||||||||||||||CONTAINER 1
    return Container(
        width: 200,
        height: 300,
        color: Color.fromARGB(255, 83, 109, 182),
        ////colors. y eso asi puedes cambiar al que gustes luego
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          numero(),
          const SizedBox(height: 50),
//esta separando a numero y bottom con un padding el cual es height,
          Botoncito(),
          //||||||||||||||||||||||||||NEW CONTAINER 2
        ]));
  }
////////////////////
  ///

  // Método separado para construir el texto que muestra el número
  Widget numero() {
    return Text(
      number.toString(),
      style: const TextStyle(
        fontSize: 40, //tamaño de texto
        fontWeight: FontWeight.bold, //grosor de texto
        color: Colors.white, //color del numero en pantalla
      ),
    );
  }

  // Método separado para construir el botón
  Widget Botoncito() {
    return ElevatedButton(
      onPressed: incrementaNumero,
      child: const Text('Presionar'),
    );
  }

  // Método separado para incrementar el número
  void incrementaNumero() {
    setState(() {
      //

      number++;
    });
  }
}
