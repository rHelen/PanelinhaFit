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
              image: AssetImage('../assets/imgfigma.png'),
              fit: BoxFit.cover,
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
                color: Colors.white,
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
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CadastroPage()),
                  );
              },
              icon: Icon(Icons.keyboard_arrow_right),
              label: Text('Cadastro'),
            ),
            Text(
              'Cadastro',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Esqueci minha senha',
              style: TextStyle(
                color: Colors.white,
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
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/logopanelinha.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Treinos',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/treinocostas.jpg'),
                          radius: 40,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Costas',
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
                SizedBox(height: 20),
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

//Tela de Cadastro
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
        title: Text('Criar Conta'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: _sobrenomeController,
              decoration: InputDecoration(labelText: 'Sobrenome'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            TextField(
              controller: _confirmarSenhaController,
              decoration: InputDecoration(labelText: 'Confirmar Senha'),
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

    // Validar os dados aqui, por exemplo, verificar se as senhas coincidem

    // Se os dados estiverem válidos, você pode salvar os dados do usuário

    // Após o cadastro, redirecione para a tela de login
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}

//Tela Inicial
class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF040116),
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
              ),
              Divider(color: Colors.white),
              ListTile(
                title: Text(
                  'Treinos recentes',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(color: Colors.white),
              ListTile(
                title: Text(
                  'Ranking Camarada',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(color: Colors.white),
              ListTile(
                title: Text(
                  'Ranking Global',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(color: Colors.white),
              ListTile(
                title: Text(
                  'Sair',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Color(0xFF040116),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: CircleAvatar(
                radius: 110, // Alterado para 250 pixels
                backgroundImage: AssetImage('logopanelinha.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
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
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Botão Peito Pressionado!');
                        // Aqui você pode adicionar a lógica para quando o botão de Peito for pressionado
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('peito.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Text(
                      'Peito',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Botão Costas Pressionado!');
                        // Aqui você pode adicionar a lógica para quando o botão de Costas for pressionado
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('costas.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Text(
                      'Costas',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Botão Perna Pressionado!');
                        // Aqui você pode adicionar a lógica para quando o botão de Perna for pressionado
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('perna.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Text(
                      'Perna',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Botão Cardio Pressionado!');
                        // Aqui você pode adicionar a lógica para quando o botão de Cardio for pressionado
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('cardio.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Text(
                      'Cardio',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
