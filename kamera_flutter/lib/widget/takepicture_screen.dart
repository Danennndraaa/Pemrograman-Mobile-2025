import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kamera_flutter/widget/filter_carousel.dart';


class CameraPage extends StatefulWidget {
  const CameraPage({super.key, required this.cameras});
  final List<CameraDescription> cameras;

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  XFile? _capturedImage;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.cameras.first,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    try {
      await _initializeControllerFuture;
      final image = await _controller.takePicture();
      setState(() {
        _capturedImage = image;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kamera & Filter')),
      body: _capturedImage == null
          ? FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      )
          : PhotoFilterCarousel(
        imageFile: File(_capturedImage!.path),
      ),
      floatingActionButton: _capturedImage == null
          ? FloatingActionButton(
        onPressed: _takePicture,
        backgroundColor: Colors.purple,
        child: const Icon(Icons.camera, color: Colors.white),
      )
          : null, // FAB hilang saat di page filter
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
