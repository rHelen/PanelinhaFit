import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sobrenomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _confirmarSenhaController = TextEditingController();

  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF040116),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Color(0xFF040116),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextField('Nome', _nomeController),
            SizedBox(height: 20.0),
            _buildTextField('Sobrenome', _sobrenomeController),
            SizedBox(height: 20.0),
            _buildTextField('E-mail', _emailController),
            SizedBox(height: 20.0),
            _buildTextField('Senha', _senhaController, isPassword: true),
            SizedBox(height: 20.0),
            _buildTextField('Confirmar Senha', _confirmarSenhaController, isPassword: true),
            SizedBox(height: 20.0),
            _buildEditButton(),
            SizedBox(height: 20.0),
            _buildSaveButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, {bool isPassword = false}) {
    return TextField(
      controller: controller,
      enabled: _isEditing,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(164, 255, 255, 255)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(164, 255, 255, 255)),
        ),
      ),
      style: TextStyle(color: Color.fromARGB(164, 255, 255, 255)),
    );
  }

  Widget _buildEditButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isEditing = !_isEditing;
        });
      },
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: 14),
      ),
      child: Text(
        _isEditing ? 'Cancelar Edição' : 'Editar',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSaveButton() {
    return ElevatedButton(
      onPressed: _isEditing ? _saveChanges : null,
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: 14),
      ),
      child: Text(
        'Salvar',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  void _saveChanges() {

    setState(() {
      _isEditing = false;
    });
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _sobrenomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _confirmarSenhaController.dispose();
    super.dispose();
  }
}
