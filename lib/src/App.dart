
import 'package:chat_casa_v/src/login_views/LoginView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_views/RegisterView.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_Chat',

      initialRoute: '/loginview',

      routes: {
        //el elemento contexto quiere decir que representa a toda la app
        '/loginview': (context) => const LoginView(),
        '/registerview': (context) => const RegisterView(),
        '/loginview': (context) => const LoginView(),
      },
    );
  }
}