import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:kamera_flutter/widget/takepicture_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Ambil daftar kamera yang tersedia
  final cameras = await availableCameras();

  runApp(MyApp(cameras: cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({super.key, required this.cameras});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      home: CameraPage(cameras: cameras),
    );
  }
}
