import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'ip.dart';

class Nextscreern extends StatefulWidget {
  const Nextscreern({super.key});

  @override
  State<Nextscreern> createState() => _NextscreernState();
}

class _NextscreernState extends State<Nextscreern> {
  void makePostRequest(text) async {
    final uri = Uri.parse("http://${Globals.ip}:3000/items");
    final headers = {'Content-Type': 'application/json'};
    Map<String, dynamic> body = {'item_id': text};
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    Response response = await post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );

    String responseBody = response.body;
    var a = jsonDecode(responseBody);
    print(a);
    setState(() {
      out = a["data"];
    });
  }

  String data = '';
  var out = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text summarizer"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
                child: Text(
              "Enter the text for summary",
              style: TextStyle(fontSize: 20),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: TextField(
                  onChanged: (e) => {data = e},
                  autocorrect: false,
                  enableSuggestions: false,
                  toolbarOptions:
                      ToolbarOptions(copy: true, cut: true, paste: true),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  autofocus: true,
                  maxLines: null,
                  decoration: InputDecoration(fillColor: Colors.grey[100])),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    makePostRequest(data);
                  },
                  child: Text('Summarize'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors
                        .teal, // Change the button's background color here
                  ),
                ),
              ),
            ),
            Text(
              'summarized text',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              out.toString(),
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
