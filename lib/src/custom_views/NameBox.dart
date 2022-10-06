import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//Esta clase sirve para hacer los apartados de manera individual
class NameBox extends StatelessWidget {
  //Para pasarlo como un elemento de clase
  final String name;
  const NameBox({Key? key, required this.name}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.lightBlueAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      )
    );
  }
}