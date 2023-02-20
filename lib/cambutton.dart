import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CamButton extends StatefulWidget {
  const CamButton({super.key});

  @override
  State<CamButton> createState() => _CamButtonState();
}

class _CamButtonState extends State<CamButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Perform camera action
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
