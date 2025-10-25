import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('Pantalla de Perfil'),
      ),
    );
  }
}
