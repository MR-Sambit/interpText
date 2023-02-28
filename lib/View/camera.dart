import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'Camerapage.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
      ),
      body: const Center(
        child:ElevatedButton(onPressed: ()async{
          await availableCameras().then((value) => Navigator.push(context, MaterialPageRoute(builder: (_)=>CameraPage(cameras:value))))
        }, child: Text("Take a pic")) ,
      ),
    );
  }
}
