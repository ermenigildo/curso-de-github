import 'package:flutter/material.dart';
import 'catalogo_screen.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda de Ropa'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          MenuItem(
            icon: Icons.shopping_bag,
            title: 'Catálogo',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CatalogoScreen()),
              );
            },
          ),
          MenuItem(
            icon: Icons.shopping_cart,
            title: 'Carrito',
            onTap: () {
              // Navega a la pantalla del Carrito
            },
          ),
          MenuItem(
            icon: Icons.payment,
            title: 'Pagos',
            onTap: () {
              // Navega a la pantalla de Pagos
            },
          ),
          MenuItem(
            icon: Icons.history,
            title: 'Historial',
            onTap: () {
              // Navega a la pantalla de Historial
            },
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  MenuItem({required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50.0),
            SizedBox(height: 16.0),
            Text(title, style: TextStyle(fontSize: 20.0)),
          ],
        ),
      ),
    );
  }
}
