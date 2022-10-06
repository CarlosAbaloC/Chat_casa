import 'package:chat_casa_v/src/custom_views/NameBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppMaterial extends StatelessWidget {

  const AppMaterial({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My Dog App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola desde flutter"),
          backgroundColor: Colors.amberAccent,
        ),

        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            //Probar si esto funciona o no
            //widthFactor: 0.4,
            //Es el ancho
            //heightFactor: 0.6,
            //Es el alto

            //Sirve para colocar la columna en el medio
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              Se puede hacer asi todo junto o crear una clase individual para cada uno
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text('Funciona?'),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text('Caja Dos'),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Caja Tres'),
                  ),
                ),
               */
                NameBox(name: "Tu"),
                SizedBox(height: 8),
                NameBox(name: "Maldita"),
                SizedBox(height: 8),
                NameBox(name: "Vieja"),
                SizedBox(height: 8),
              
              ]
            ),
          ),
        ),
    );


  }

}