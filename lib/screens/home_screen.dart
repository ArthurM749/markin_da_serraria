import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final bool temaEscuro;
  final VoidCallback onThemeChanged;
  const HomeScreen({
    super.key, required this.temaEscuro, required this.onThemeChanged
    });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Markin da Serraria'),
            Text('Controle de Serviços'),
          ]
        ),
      ),
    );
  }
}