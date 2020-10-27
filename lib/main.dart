import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget("Hello"),
            SizedBox(
              height: 8,
            ),
            TextWidget("World"),
            SizedBox(
              height: 8,
            ),
            TextWidget("How are you?"),
          ],
        )),
      ),
    );
  }
}

class TextWidget extends StatefulWidget {
  final String name;

  const TextWidget(this.name);

  @override
  State<StatefulWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            count++;
          });
        },
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.blueAccent),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("${widget.name} - $count"),
          ),
        )
    );
  }
}
