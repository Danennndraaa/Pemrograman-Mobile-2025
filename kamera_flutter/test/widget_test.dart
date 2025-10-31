import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:camera/camera.dart';
import 'package:kamera_flutter/widget/takepicture_screen.dart';

void main() {
  testWidgets('TakePictureScreen loads properly', (WidgetTester tester) async {
    // Dummy camera (tidak digunakan dalam test sebenarnya)
    const camera = CameraDescription(
      name: '0',
      lensDirection: CameraLensDirection.back,
      sensorOrientation: 0,
    );

    await tester.pumpWidget(MaterialApp(
      home: TakePictureScreen(camera: camera),
    ));

    expect(find.byType(TakePictureScreen), findsOneWidget);
  });
}
