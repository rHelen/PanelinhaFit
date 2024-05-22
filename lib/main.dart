import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              image: AssetImage('../assets/imgfigma.png'), // Caminho para sua imagem
              fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o container
            ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PANELINHA',
              style: TextStyle(
                color: Colors.white, fontSize: 24.0,
              ),
            ),
            Text(
              'Fit',
              style: TextStyle(
                color: Colors.white, // Definindo a cor azul para a fonte
              ),
            ),
            TextField(
              controller: _emailController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: const Color.fromARGB(164, 255, 255, 255)),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
              //Deixar verificação aqui por enquanto
              String email = _emailController.text;
              String password = _passwordController.text;

                if(email=='email.com' && password=='123'){
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SegundaTela2()),
                  );
                }
                _login();
              },
              icon: Icon(Icons.keyboard_arrow_right),
              label: Text(''),
            ),
            Text(
              'Cadastro',
              style: TextStyle(
                color: Colors.white, // Definindo a cor azul para a fonte
              ),
            ),
            Text(
              'Esqueci minha senha',
              style: TextStyle(
                color: Colors.white, // Definindo a cor azul para a fonte
              ),
            )
          ],
        ),
      ),
    );
  }

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if(email=='email.com'){
      print('Parabens, vc é incrível cara');
    }

    print('Email: $email');
    print('Password: $password');
  }
}

class SegundaTela2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040116), // cor de fundo azul
      appBar: AppBar(
        title: Text('Minha Aplicação'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF040116),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // implementação para o item 1
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // implementação para o item 2
              },
            ),
            // Adicione mais itens do menu conforme necessário
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          // Adiciona a imagem na parte superior da tela
          Image.asset(
            'assets/logopanelinha.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          // Conteúdo restante
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Texto acima das imagens',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/image1.png'),
                          radius: 40,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'texto abaixo de uma imagem',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image2.png'),
                      radius: 40,
                    ),
                  ],
                ),
                SizedBox(height: 20), // Espaçamento entre as imagens e a parte inferior da tela
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MinhaTela extends StatefulWidget {
  @override
  _MinhaTelaState createState() => _MinhaTelaState();
}

class _MinhaTelaState extends State<MinhaTela> {
  TextEditingController nomeUser = TextEditingController();
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('../assets/sawako.jpg'),
          fit: BoxFit.cover,
        )
      ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    ),
      ),
    );
  }
}
