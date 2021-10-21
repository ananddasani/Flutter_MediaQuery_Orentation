import 'package:flutter/material.dart';

class OrentationExample extends StatefulWidget {
  const OrentationExample({Key? key}) : super(key: key);

  @override
  _OrentationExampleState createState() => _OrentationExampleState();
}

class _OrentationExampleState extends State<OrentationExample> {
  Widget protrait() {
    return Center(
      child: Text(
        "Protrait Mode",
        style: TextStyle(
          color: Colors.deepPurple,
          fontFamily: "Times New Roman",
          fontSize: 30,
        ),
      ),
    );
  }

  Widget landscape() {
    return Center(
        child: Text(
      "LandScape Mode",
      style: TextStyle(
        color: Colors.deepPurple,
        fontFamily: "Times New Roman",
        fontSize: 30,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orentation Example"),
      ),
      // body: customContainer(),
      body: OrientationBuilder(
        builder: (context, or) {
          if (or == Orientation.portrait)
            return protrait();
          else
            return landscape();
        },
      ),
    );
  }

  Container customContainer() {
    return Container(
      child: Center(
        child: RichText(
          text: TextSpan(
            text: "Rotate the Device  ",
            style: TextStyle(
              color: Colors.deepPurple,
              fontFamily: "Times New Roman",
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
            children: [
              WidgetSpan(child: Icon(Icons.crop_rotate)),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
