import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; //lo veo seguido en cada que inicio una claes :v
import 'package:test2/fun.dart'; //para llamar al otro archivo .dart osea "fun.dart"
//escribi import luego package "Test2" asi se llama el proyecto y luego fun.dart como se llama el otro archivo

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //clase
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner:
            false, //quitar el debug de arriba por predeterminado.
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('🤓>>>>>>>>>>🧐👌'),
              titleTextStyle: TextStyle(
                color: Colors.white, // Cambia 'white' por el color que desees
                fontSize: 25, // Tamaño de fuente opcional

                fontWeight: FontWeight.bold, // Opciones de estilo de fuente
              ),

              backgroundColor: Color.fromARGB(255, 98, 189,
                  113), //colors.red y eso asi puedes cambiar al que gustes luego
            ),
            body: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Puma(),

                  ///la clase esta en fun
                ]))));
  }
}
