import 'package:flutter/material.dart';

//criação da classe que vai exibir o conteudo presene na descubra
class Descubra extends StatelessWidget {
  const Descubra({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // titulo da seção
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Descubra Mais", // Titulo
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
        const SizedBox(height: 10), // espaço entre os itens
        // card seguro de vida
        Card(
          child: Column(
            children: [
              // imagem
              Image.asset('assets/seguroVida.png'),
              Padding(
                padding: const EdgeInsets.all(10), // espaçamento interno
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // titulo do seguro
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Seguro de Vida", // titulo
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // texto do seguro de vida
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Cuide bem de quem você ama de um jeito simples.",
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ),
                    // Botão "Conhecer"
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 10), // Espaço antes e depois do botão
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0, // Remove a elevação do botão
                          backgroundColor:
                              const Color(0xFF8A05BE), // Cor do botão
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 24), // Padding do botão
                        ),
                        onPressed: () {
                          // Ação do botão
                        },
                        child: const Text(
                          "Conhecer",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
