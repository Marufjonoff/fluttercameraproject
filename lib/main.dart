import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:fluttercameraproject/picture/take_picture_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      title: "Camera",
      theme: ThemeData.dark(),
      home: TakePictureScreen(camera: firstCamera),
    )
  );
}
