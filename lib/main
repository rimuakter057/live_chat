import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_chat/permission_handelar.dart';
import 'home_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PermissionHelper.requestCameraAndMicPermissions();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}