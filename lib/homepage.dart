import 'package:flutter/material.dart';
import 'RevampSearch.dart';
import 'Searchbar.dart';
import 'package:inter/cambutton.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'InterpText',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Color.fromARGB(255, 242, 247, 243)],
            ),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CamButton(),
              Center(
                child: Container(
                    margin: const EdgeInsets.all(40),
                    child: const Text(
                      " Translate Text .",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: SearchBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
