import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo'),
      ),
      body: Center(
        child: Text('Bienvenido al Catálogo de Ropa'),
      ),
    );
  }
}
