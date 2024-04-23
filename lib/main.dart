import 'package:flutter/material.dart';

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
                    MaterialPageRoute(builder: (context) => SegundaTela()),
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

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../assets/backHomeApp.png'), // Caminho para sua imagem
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
          ]
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Home Page',
//       home: HomePage(),
//     );
//   }
// }

// class _HomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Bem-vindo à Página Inicial',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: (){
//                 //Chamar tela de treino TreinoPage();
//               }, 
//               child: Text('Botão'),
//             ),
//           ],
//         ),
//       ),
//     )
//   }
// }
