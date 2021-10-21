import 'package:flutter/material.dart';
import 'package:mediaquery_orientation/pages/media_query_example.dart';
import 'package:mediaquery_orientation/pages/orentation_example.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rotation Capability"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrentationExample()));
              },
              child: Text(
                "Roation Example Page",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MediaQueryExample()));
              },
              child: Text(
                "Media Query Example Page",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
