import 'package:flutter/material.dart';
import 'package:text/Nextscreen.dart';
import 'package:text/Nextaudio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Firstscreen(),
    );
  }
}

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S3 Edu App"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Nextscreern()));
                },
                child: Text("Text Summarizer"),
                style: ElevatedButton.styleFrom(
                  primary:
                      Colors.teal, // Change the button's background color here
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Image.asset('assets/my_pic.png'),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press here
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Nextaudio()));
                },
                child: Text("Audio Transcriber"),
                style: ElevatedButton.styleFrom(
                  primary: Colors
                      .deepPurple, // Change the button's background color here
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Image.asset('assets/my_pic2.png'),
            ),
          ],
        ),
      ),
    );
  }
}

