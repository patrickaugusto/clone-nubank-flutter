import 'package:flutter/material.dart';

// criação da classe que vai exibir o conteudo presene na seção de credito
class Credito extends StatelessWidget {
  const Credito({super.key});

  @override
  Widget build(Object context) {
    // Constrói a interface do widget
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // alinha os filhos a esquerda
      children: [
        const Row(
          //alinha os itens na horizontal
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // espaço entre os itens
          children: [
            Text(
              "Cartão de Crédito",
              style: TextStyle(fontSize: 24),
            ),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
        const SizedBox(
          height: 10, // espaço entre os elementos
        ),
        const Text(
          "Fatura Fechada",
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "R\$2.123,39",
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Vencimento dia 15",
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        const SizedBox(
          height: 15,
        ),
        // botão renegociar
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.black12,
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
          ),
          onPressed: () {},
          child: const Text(
            "Renegociar",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        )
      ],
    );
  }
}
