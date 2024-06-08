import 'package:flutter/material.dart';
import 'login_page.dart';

class NovaSenhaPage extends StatelessWidget {
  final TextEditingController _novaSenhaController = TextEditingController();
  final TextEditingController _confirmarSenhaController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF040116),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
                  (Route<dynamic> route) => false,
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20.0),
            Text(
              'Nova Senha',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _novaSenhaController,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Nova Senha',
                      labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, inserir a nova senha';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _confirmarSenhaController,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Confirmar Senha',
                      labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, confirme a senha';
                      }
                      if (value != _novaSenhaController.text) {
                        return 'As senhas devem ser iguais';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Senha atualizada com sucesso'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                        (Route<dynamic> route) => false,
                  );
                }
              },
              child: Text('Atualizar Senha'),
            ),
          ],
        ),
      ),
    );
  }
}
