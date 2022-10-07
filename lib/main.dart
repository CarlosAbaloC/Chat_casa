import 'package:chat_casa_v/src/App.dart';
import 'package:chat_casa_v/src/AppMaterial.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
  //runApp(const AppMaterial());
}