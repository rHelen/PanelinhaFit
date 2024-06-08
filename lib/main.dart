import 'package:flutter/material.dart';
import 'login_page.dart';
import 'cadastro_page.dart';
import 'segunda_tela.dart';
import 'treinos.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
        debugShowCheckedModeBanner: false
    );
  }
}
