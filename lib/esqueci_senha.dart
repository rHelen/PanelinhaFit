import 'package:flutter/material.dart';
import 'codigo_confirmacao.dart';
import 'login_page.dart';

class EsqueciSenha extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
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
        padding: EdgeInsets.all(20.0),
        child: Center(
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
                'Esqueci a Senha',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu e-mail';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  _resetPassword(context);
                },
                child: Text('Atualizar Senha', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _resetPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Instruções de recuperação enviadas para $email'),
          duration: Duration(seconds: 3),
        ),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CodigoConfirmacao()),
      );
    }
  }
}
