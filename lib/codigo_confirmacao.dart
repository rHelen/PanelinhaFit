import 'package:flutter/material.dart';
import 'login_page.dart';
import 'nova_senha.dart';

class CodigoConfirmacao extends StatelessWidget {
  final TextEditingController _codigoController = TextEditingController();

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
              'Confirmação do e-mail',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _codigoController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Código de Confirmação',
                labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NovaSenhaPage()),
                );
              },
              child: Text('Verificar Código'),
            ),
          ],
        ),
      ),
    );
  }
}
