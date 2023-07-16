import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class Audiotest extends StatefulWidget {
  const Audiotest({required Key key}) : super(key: key);

  @override
  State<Audiotest> createState() => _AudiotestState();
}

class _AudiotestState extends State<Audiotest> {
  final record = Record();

  Future<void> Startrecord() async {
    bool isRecording = await record.isRecording();
    final Directory tempDir = await getTemporaryDirectory();
    print(tempDir);

    if (!isRecording) {
      print("inside");
      if (await record.hasPermission()) {
        print("recording");
        // Start recording
        await record.start(
          path: "/storage/emulated/0/test.m4a",
          encoder: AudioEncoder.aacLc, // by default
          bitRate: 128000, // by default
          samplingRate: 44100, // by default
        );
      }
    }
  }

  Future<void> Stoprecord() async {
    bool isRecording = await record.isRecording();
    if (isRecording) {
      await record.stop();
    }
  }

  Future<void> Testrecord() async {
    bool isRecording = await record.isRecording();
    print(isRecording);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () => {Startrecord()}, child: Text("Start")),
          ElevatedButton(onPressed: () => {Stoprecord()}, child: Text("stop")),
          ElevatedButton(onPressed: () => {Testrecord()}, child: Text("test"))
        ],
      ),
    );
  }
}
