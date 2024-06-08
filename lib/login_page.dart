import 'package:flutter/material.dart';
import 'cadastro_page.dart';
import 'segunda_tela.dart';
import 'esqueci_senha.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 500,
              height: 300,
            ),
            TextField(
              controller: _emailController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: const Color.fromARGB(164, 255, 255, 255)),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            ElevatedButton.icon(
              onPressed: () {
                if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Senha ou E-mail vazios'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                } else {
                  _login();
                }
              },
              icon: Icon(Icons.keyboard_arrow_right),
              label: Text(''),
            ),
            SizedBox(
              height: 30,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EsqueciSenha()),
                    );
                  },
                  child: const Text(
                    'Esqueci a senha',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(164, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 30,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CadastroPage()),
                    );
                  },
                  child: const Text(
                    'Criar Conta',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(164, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email == 'email.com' && password == '123') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SegundaTela()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Senha ou E-mail incorretos'),
          duration: Duration(seconds: 3),
        ),
      );
    }

    print('Email: $email');
    print('Password: $password');
  }
}
