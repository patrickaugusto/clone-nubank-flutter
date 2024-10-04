import 'package:flutter/material.dart';

// criação da classe que vai exibir o conteudo presene na seção emprestimo
class Emprestimo extends StatelessWidget {
  const Emprestimo({super.key});

  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Alinha os filhos à esquerda
      children: [
        // Linha contendo o título "Empréstimo" e um ícone
        const Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Espaço entre o título e o ícone
          children: [
            Text(
              "Empréstimo", // Título da seção
              style: TextStyle(fontSize: 24),
            ),
            Icon(Icons
                .arrow_forward_ios_outlined), // Ícone indicando que a seção é interativa
          ],
        ),
        const SizedBox(height: 10), // Espaço vertical entre a linha e o texto
        // Texto informativo sobre o status do empréstimo
        const Text(
          "Tudo Certo! Você está em dia.", // Mensagem informativa
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ],
    );
  }
}
