import 'package:flutter/material.dart';
import 'package:zonego/PaginaInicial.dart';

void main() => runApp(const MeuAppNavigationBarApp());

class MeuAppNavigationBarApp extends StatelessWidget {
  const MeuAppNavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const MeuAplicativo(),
    );
  }
}

//fim da main.dart


