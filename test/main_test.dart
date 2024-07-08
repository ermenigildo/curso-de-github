import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tienda_ropa/main.dart';

void main() {
  testWidgets('TiendaRopaApp muestra la pantalla de menú principal', (WidgetTester tester) async {
    await tester.pumpWidget(TiendaRopaApp());

    expect(find.text('Tienda de Ropa'), findsOneWidget);
  });
}
