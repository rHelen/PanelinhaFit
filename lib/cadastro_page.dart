import 'package:flutter/material.dart';
import 'login_page.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sobrenomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _confirmarSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Criar Conta',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF040116),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nomeController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Nome',
                labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
              ),
            ),
            TextField(
              controller: _sobrenomeController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Sobrenome',
                labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
              ),
            ),
            TextField(
              controller: _emailController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
              ),
            ),
            TextField(
              controller: _senhaController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
              ),
              obscureText: true,
            ),
            TextField(
              controller: _confirmarSenhaController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Confirmar Senha',
                labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _cadastrar();
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }

  void _cadastrar() {
    String nome = _nomeController.text;
    String sobrenome = _sobrenomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;
    String confirmarSenha = _confirmarSenhaController.text;


    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
