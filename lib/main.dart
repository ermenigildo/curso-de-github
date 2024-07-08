import 'package:flutter/material.dart';
import 'menu_principal.dart';

void main() {
  runApp(TiendaRopaApp());
}

class TiendaRopaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylos Con Anita',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPrincipal(),
    );
  }
}
