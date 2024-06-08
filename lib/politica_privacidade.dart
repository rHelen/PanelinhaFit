import 'package:flutter/material.dart';

class PoliticaPrivacidade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF040116),
      appBar: AppBar(
        backgroundColor:  Color(0xFF040116),
        title: Text(
          'Política de Privacidade',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Última atualização: 30/05/2024',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'A PanelinhaFit respeita a privacidade dos usuários do nosso aplicativo móvel. Esta política de privacidade informa sobre nossas políticas em relação à coleta, uso e divulgação de informações pessoais quando você usa nosso aplicativo.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Coleta e Uso de Informações',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Não coletamos informações pessoais identificáveis, como seu nome, endereço, número de telefone ou endereço de e-mail, a menos que você nos forneça essas informações de forma voluntária. Podemos solicitar informações pessoais adicionais caso seja necessário para o uso de recursos específicos do aplicativo.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Uso de Cookies',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Nosso aplicativo não usa cookies.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Links para Outros Sites',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Nosso aplicativo pode conter links para outros sites. Se você clicar em um link de terceiros, será direcionado para esse site. Observe que esses sites externos não são operados por nós. Portanto, recomendamos que você revise a política de privacidade desses sites. Não temos controle sobre o conteúdo, políticas ou práticas de privacidade de sites ou serviços de terceiros.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Segurança',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Valorizamos sua confiança ao nos fornecer suas informações pessoais, e estamos empenhados em protegê-las. No entanto, lembre-se de que nenhum método de transmissão pela internet ou método de armazenamento eletrônico é 100% seguro e confiável, e não podemos garantir sua segurança absoluta.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Alterações a Esta Política de Privacidade',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Podemos atualizar nossa Política de Privacidade periodicamente. Portanto, recomendamos que você revise esta página periodicamente para quaisquer alterações. Informaremos sobre quaisquer alterações publicando a nova Política de Privacidade nesta página.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contate-Nos',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Se você tiver dúvidas ou sugestões sobre nossa Política de Privacidade, não hesite em entrar em contato conosco em panelinhafit@gmail.com.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Ao usar o aplicativo, você concorda com os termos desta política de privacidade.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
