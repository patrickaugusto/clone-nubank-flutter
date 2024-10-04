import 'package:flutter/material.dart';
import 'conta.dart';
import 'credito.dart';
import 'descubra.dart';
import 'emprestimo.dart';

// classe responsavel pela estrutura e conteudo da tela principal
class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          // Botão de visualização
          IconButton(
            icon: const Icon(Icons.visibility_outlined),
            color: Color(0xFFF5F5F5),
            onPressed: () {},
          ),
          // Botão de ajuda
          IconButton(
            icon: const Icon(Icons.question_mark_rounded),
            color: Color(0xFFF5F5F5),
            onPressed: () {},
          ),
          // Botão de e-mails
          IconButton(
            icon: const Icon(Icons.mark_email_read_outlined),
            color: Color(0xFFF5F5F5),
            onPressed: () {},
          ),
        ],
        // Botão de navegação que exibe um ícone de perfil
        leading: IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFFBA4DE3)),
          ),
          icon: const Icon(Icons.person_outline),
          color: Color(0xFFF5F5F5),
          onPressed: () {},
        ),
        backgroundColor: const Color(0xFF8A05BE),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: const [
            Conta(), // exibe as informações da classe conta
            Padding(
              padding: EdgeInsets.only(
                  top: 30, bottom: 30), // Padding acima e abaixo do Divider
              child: Divider(
                height: 1,
              ),
            ),
            Credito(), // exibe as informações da classe crédito
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Divider(
                height: 1,
              ),
            ),
            Emprestimo(), // exibe as informações da classe empréstimo
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Divider(
                height: 1,
              ),
            ),
            Descubra(), // exibe as informações da classe descubra
          ],
        ),
      ),
    );
  }
}
