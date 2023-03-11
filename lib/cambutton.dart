import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:inter/View/OpenCam.dart';

class CamButton extends StatefulWidget {
  const CamButton({super.key});

  @override
  State<CamButton> createState() => _CamButtonState();
}

class _CamButtonState extends State<CamButton> {
  late CameraController controller;
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150.0,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 16),
                Text(
                  'Select A Option',
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () async {
                        await OpenCam(controller);
                      },
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        size: 45,
                        color: Color.fromARGB(255, 85, 227, 161),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Do something when the user taps the second button
                      },
                      icon: Icon(
                        Icons.browse_gallery_rounded,
                        size: 45,
                        color: Color.fromARGB(255, 85, 227, 161),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Perform camera action
        _showBottomSheet(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(45),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 193, 233, 248),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, 4),
                blurRadius: 7,
              ),
            ],
          ),
          child: Icon(
            Icons.camera_alt_outlined,
            size: 100,
            color: Color.fromARGB(255, 85, 227, 161),
          ),
        ),
      ),
    );
    ;
  }
}
