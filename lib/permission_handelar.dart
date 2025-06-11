import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  static Future<void> requestCameraAndMicPermissions() async {
    await [
      Permission.camera,
      Permission.microphone,
    ].request();
  }
}
