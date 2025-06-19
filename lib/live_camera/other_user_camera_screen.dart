import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class OtherUserCameraScreen extends StatefulWidget {
  const OtherUserCameraScreen({super.key});

  @override
  State<OtherUserCameraScreen> createState() => _OtherUserCameraScreenState();
}

class _OtherUserCameraScreenState extends State<OtherUserCameraScreen> {
  final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    await _remoteRenderer.initialize();

    // এটা fixed demo stream হিসেবে নিজের ক্যামেরা চালু করবে, but pretend it's someone else
    final stream = await navigator.mediaDevices.getUserMedia({
      'video': {'facingMode': 'environment'}, // 🔁 back camera use
      'audio': false,
    });

    _remoteRenderer.srcObject = stream;
  }

  @override
  void dispose() {
    _remoteRenderer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: RTCVideoView(_remoteRenderer, mirror: false),
    );
  }
}
