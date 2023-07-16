import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:text/English.dart';
import 'package:text/testconvert.dart';

class Nextaudio extends StatefulWidget {
  const Nextaudio({super.key});

  @override
  State<Nextaudio> createState() => _NextscreernState();
}

class _NextscreernState extends State<Nextaudio> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: "my app",
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => textconvert('en')));
                    },
                    child: Text('  English   '),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .blueGrey, // Change the button's background color here
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => textconvert('tr')));
                    },
                    child: Text(' Turkish   '),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .deepPurple, // Change the button's background color here
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => textconvert('hi')));
                    },
                    child: Text('    Hindi     '),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .deepOrangeAccent, // Change the button's background color here
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => textconvert('zh-CN')));
                    },
                    child: Text(' Chinese    '),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .teal, // Change the button's background color here
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => textconvert('ja')));
                    },
                    child: Text(' Japnese  '),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .cyan, // Change the button's background color here
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => textconvert('es')));
                    },
                    child: Text('  Spanish  '),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .redAccent, // Change the button's background color here
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => textconvert('pt')));
                    },
                    child: Text('Portuguese'),
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
