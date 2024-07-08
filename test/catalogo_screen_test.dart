import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tienda_ropa/catalogo_screen.dart';

void main() {
  testWidgets('CatalogoScreen muestra el mensaje de bienvenida', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CatalogoScreen()));

    expect(find.text('Bienvenido al Catálogo de Ropa'), findsOneWidget);
  });
}
