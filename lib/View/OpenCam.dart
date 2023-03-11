import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class OpenCam extends StatefulWidget {
  const OpenCam(CameraController controller, {super.key});

  @override
  State<OpenCam> createState() => _OpenCamState();
}

class _OpenCamState extends State<OpenCam> {
  late List<CameraDescription> cameras;
  late CameraController controller;

  @override
  void initState() {
    startCamera();
    super.initState();
  }

  void startCamera() async {
    cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.high);
    await controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller.value.isInitialized) {
      return Scaffold(
        body: Stack(
          children: [
            CameraPreview(controller),
          ],
        ),
      );
    } else {
      return SizedBox();
    }
  }
}
