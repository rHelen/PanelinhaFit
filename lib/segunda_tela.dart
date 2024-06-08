import 'package:flutter/material.dart';
import 'login_page.dart';
import 'treinos.dart';
import 'perfil_page.dart';
import 'politica_privacidade.dart';

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF040116),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black.withOpacity(0.95),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Perfil',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PerfilPage()),
                  );
                },
              ),
              Divider(color: Colors.white),
              ListTile(
                title: Text(
                  'Política de privacidade',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PoliticaPrivacidade()),
                  );
                },
              ),
              Divider(color: Colors.white),
              ListTile(
                title: Text(
                  'Sair',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          child: IntrinsicHeight(
            child: Container(
              color: Color(0xFF040116),
              child: Column(
                children: [
                  SizedBox(height: 80.0),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: AssetImage('assets/logo.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Treinos',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCircleAvatar('peito.png', context, 'Peito'),
                      _buildCircleAvatar('costas.jpg', context, 'Costas'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCircleAvatar('perna.jpg', context, 'Perna'),
                      _buildCircleAvatar('cardio.jpg', context, 'Cardio'),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCircleAvatar(String assetName, BuildContext context, String modalidade) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Treinos(title: modalidade)),
              );
            },
            child: CircleAvatar(
              radius: 55.0,
              backgroundImage: AssetImage('assets/$assetName'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          modalidade,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
