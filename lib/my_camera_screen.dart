import 'dart:math' as math;
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class MyCameraScreen extends StatefulWidget {
  const MyCameraScreen({super.key});

  @override
  State<MyCameraScreen> createState() => _MyCameraScreenState();
}

class _MyCameraScreenState extends State<MyCameraScreen> {
  CameraController? _controller;
  List<CameraDescription>? cameras;
  int selectedCameraIndex = 1;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    cameras = await availableCameras();
    _controller = CameraController(
      cameras![selectedCameraIndex],
      ResolutionPreset.high,
    );
    await _controller!.initialize();
    setState(() {});
  }

  void _switchCamera() async {
    if (cameras == null || cameras!.isEmpty) return;

    selectedCameraIndex = (selectedCameraIndex == 0) ? 1 : 0;
    await _controller?.dispose();
    _controller = CameraController(
      cameras![selectedCameraIndex],
      ResolutionPreset.max,
    );
    await _controller!.initialize();
    setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    bool isFrontCamera = cameras![selectedCameraIndex].lensDirection == CameraLensDirection.front;

    return Stack(
      children: [
        SizedBox.expand(
          child: isFrontCamera
              ? Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: CameraPreview(_controller!),
          )
              : CameraPreview(_controller!),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: FloatingActionButton(
              onPressed: _switchCamera,
              child: const Icon(Icons.cameraswitch),
            ),
          ),
        ),
      ],
    );
  }
}
