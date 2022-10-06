
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RFInputText extends StatelessWidget {
  final String sValorInicial;
  final int iLongitudPalabra;
  final String sHelperText;
  final String sTitulo;
  final Icon icIzquierdo;
  final Icon icDerecho;

  const RFInputText({Key? key,
    this.sValorInicial ="",
    this.iLongitudPalabra = 20,
    this.sTitulo="",
    this.icDerecho= const Icon(Icons.check_circle),
    this.icIzquierdo= const Icon(Icons.favorite),
    required this.sHelperText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      cursorColor: Colors.pinkAccent,
      //Mete la informacion dada en loginView
      initialValue: this.sValorInicial,
      //La cantidad maxima de palabras
      maxLength: this.iLongitudPalabra,
      decoration: InputDecoration(
        icon: this.icIzquierdo,
        labelText: this.sTitulo,
        labelStyle: TextStyle(
          color: Colors.purple,
        ),
        helperText: this.sHelperText,
        suffixIcon: this.icDerecho,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black)
      )
      ),
    );
  }

}

