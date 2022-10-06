import 'package:chat_casa_v/src/custom_views/RFInputText.dart';
import 'package:flutter/material.dart';

import '../custom_views/NameBox.dart';

class LoginView extends StatelessWidget {

  const LoginView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
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
                    sHelperText: "Escriba su usuario",
                    sTitulo: "Usuario",
                  icDerecho: Icon(Icons.account_circle_outlined),
                ),
                RFInputText(
                  //sValorInicial: "Escriba su usuario",
                  iLongitudPalabra: 25,
                  sHelperText: "Escriba su contraseña",
                  sTitulo: "Contraseña",
                  icDerecho: Icon(Icons.account_circle_outlined),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: () {

                      print("Boton login");
                    },
                        child: Text("Login"),
                    ),
                    OutlinedButton(onPressed: () {
                      //Con el popAndPushNamed sustituye una vista por otra
                      //Con el pushNamed en cambio saldra a la parte anterior de la app
                      Navigator.of(context).popAndPushNamed('/registerview');
                      print("Boton Registro");
                    },
                      child: Text("Registro"),
                    )
                  ],
                )

              ]
          ),
        ),
    );
  }
}