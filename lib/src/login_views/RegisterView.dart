

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_views/RFInputText.dart';

class RegisterView extends StatelessWidget {

  const RegisterView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        backgroundColor: Colors.amberAccent,
      ),

      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RFInputText(
                //sValorInicial: "Escriba su usuario",
                iLongitudPalabra: 25,
                sHelperText: "Registra su usuario",
                sTitulo: "Usuario",
                icDerecho: Icon(Icons.account_circle_outlined),
              ),
              RFInputText(
                //sValorInicial: "Escriba su usuario",
                iLongitudPalabra: 25,
                sHelperText: "Que contraseña quieres",
                sTitulo: "Contraseña",
                icDerecho: Icon(Icons.password),
              ),
              RFInputText(
                //sValorInicial: "Escriba su usuario",
                iLongitudPalabra: 25,
                sHelperText: "Pon la misma contraseña",
                sTitulo: "Repetir contraseña",
                icDerecho: Icon(Icons.password),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(onPressed: () {

                    print("Registro aceptado");
                  },
                    child: Text("Aceptar"),
                  ),
                  OutlinedButton(onPressed: () {

                    print("Registro cancelado");
                    Navigator.of(context).popAndPushNamed('/loginview');

                  },
                    child: Text("Borrar"),
                  )
                ],
              )

            ]
        ),
      ),
    );
  }
}