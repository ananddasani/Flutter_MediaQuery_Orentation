import 'package:flutter/material.dart';

class MediaQueryExample extends StatefulWidget {
  const MediaQueryExample({Key? key}) : super(key: key);

  @override
  _MediaQueryExampleState createState() => _MediaQueryExampleState();
}

class _MediaQueryExampleState extends State<MediaQueryExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Media Query Example"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // width: 250,
              // width: MediaQuery.of(context).size.width * 0.5,
              // height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.3,
              color: Colors.red,
            ),
            Container(
              // width: 250,
              // width: MediaQuery.of(context).size.width * 0.5,
              // height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.3,
              color: Colors.blue,
            ),
          ],
        ));
  }
}
