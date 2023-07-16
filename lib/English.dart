import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: depend_on_referenced_packages
//import 'package:microphone/microphone.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _NextscreernState();
}

class _NextscreernState extends State<English> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio to text transcriber"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
