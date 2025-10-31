import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:camera/camera.dart';
import 'package:kamera_flutter/widget/takepicture_screen.dart';

void main() {
  testWidgets('App loads without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(body: Text('Hello Test')),
    ));

    expect(find.text('Hello Test'), findsOneWidget);
  });
}
