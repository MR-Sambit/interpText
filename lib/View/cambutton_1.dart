import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// ignore: camel_case_types
class camB extends StatefulWidget {
  const camB({super.key});

  @override
  State<camB> createState() => camBState();
}

class camBState extends State<camB> {
  Widget _buildBottomPopup(BuildContext context) {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: Column(
      children: [
        SizedBox(height: 16),
        Text('Do you want to continue?'),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Do something when the user taps the first button
              },
              child: Text('Yes'),
            ),
            ElevatedButton(
              onPressed: () {
                // Do something when the user taps the second button
              },
              child: Text('No'),
            ),
          ],
        ),
      ],
    ),
  );
}
 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Bottom Pop-Up Example'),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: _buildBottomPopup,
          );
        },
        child: Text('Show Pop-Up'),
      ),
    ),
  );
}
}