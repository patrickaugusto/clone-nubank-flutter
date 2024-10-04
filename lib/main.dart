import 'package:flutter/material.dart';
import 'appbody.dart'; // Importa o widget que representa o corpo do aplicativo

void main() {
  runApp(const MainApp());
}

// classe principal
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // remove a faixa de depuração do aplicativo
      home:
          const AppBody(), // exibe as informações da classe AppBody como a tela inicial
    );
  }
}
