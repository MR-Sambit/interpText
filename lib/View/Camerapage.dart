import 'package:camera_platform_interface/src/types/camera_description.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key, required List<CameraDescription> cameras});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}