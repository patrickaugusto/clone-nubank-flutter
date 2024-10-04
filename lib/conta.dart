import 'package:flutter/material.dart';

// criação da classe que vai exibir o conteudo presene na seção da conta
class Conta extends StatelessWidget {
  const Conta({super.key});

  @override
  Widget build(BuildContext context) {
    // Constrói a interface do widget
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // alinha os filhos a esquerda
      children: [
        //alinha os itens na horizontal
        const Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // espaço entre os itens
          children: [
            Text(
              "Conta",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
        const SizedBox(height: 10), // espaço entre os itens
        const Text(
          "R\$7,28", // Valor da conta
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // organiza o posicionamento dos botões igualmente
          children: [
            // Botão do Pix
            Column(children: [
              IconButton.filledTonal(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromRadius(30)),
                ),
                icon: const Icon(Icons.pix),
                onPressed: () {},
              ),
              const Text("Pix"),
            ]),
            // Botão de pagamentos
            Column(children: [
              IconButton.filledTonal(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromRadius(30)),
                ),
                icon: const Icon(Icons.money),
                iconSize: 30,
                color: Colors.black,
                onPressed: () {},
              ),
              const Text("Pagamentos"),
            ]),
            // Botão de qrcode
            Column(children: [
              IconButton.filledTonal(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromRadius(30)),
                ),
                icon: const Icon(
                  Icons.qr_code,
                  size: 30,
                ),
                onPressed: () {},
              ),
              const Text("QR Code"),
            ]),
            // Botão de transferir
            Column(children: [
              IconButton.filledTonal(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromRadius(30)),
                ),
                icon: const Icon(
                  Icons.attach_money,
                  size: 30,
                ),
                onPressed: () {},
              ),
              const Text("Transferir"),
            ]),
          ],
        ),
        const SizedBox(height: 30),
        //card que exibe "Meus Cartões" junto com um icone de cartão de cred
        Card(
          child: ListTile(
            title: Text("Meus Cartões"), //titulo do card
            leading: Icon(Icons.credit_card),
          ),
        ),
        const SizedBox(height: 30),
        Card(
          child: Container(
            padding: const EdgeInsets.all(10), // padding interno do Container
            child: const ListTile(
              title: Text("Guarde seu dinheiro em caixinhas",
                  style: TextStyle(
                    color: Color(0xFF8A05BE),
                    fontWeight: FontWeight.bold,
                  )),
              subtitle:
                  Text("Acessando a área de planejamento"), // subtitulo do card
            ),
          ),
        ),
      ],
    );
  }
}
