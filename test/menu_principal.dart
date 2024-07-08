import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tienda_ropa/menu_principal.dart';
import 'package:tienda_ropa/catalogo_screen.dart';

void main() {
  testWidgets('MenuPrincipal muestra todos los ítems del menú', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: MenuPrincipal()));

    expect(find.text('Catálogo'), findsOneWidget);
    expect(find.text('Carrito'), findsOneWidget);
    expect(find.text('Pagos'), findsOneWidget);
    expect(find.text('Historial'), findsOneWidget);
  });

  testWidgets('Navegar a CatalogoScreen al tocar el ítem del catálogo', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: MenuPrincipal()));

    await tester.tap(find.text('Catálogo'));
    await tester.pumpAndSettle();

    expect(find.text('Bienvenido al Catálogo de Ropa'), findsOneWidget);
  });
}
