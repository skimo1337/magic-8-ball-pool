import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything !!'),
            backgroundColor: Colors.deepPurple,
          ),
          body: Thing(),
        ),
      ),
    );

class Thing extends StatefulWidget {
  @override
  _ThingState createState() => _ThingState();
}

class _ThingState extends State<Thing> {
  int x = 1;
  void change() {
    setState(() {
      x = Random().nextInt(5) + 1;
      print(x);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.indigo.shade200,
            child: FlatButton(
                onPressed: () {
                  change();
                },
                child: Image.asset('images/ball$x.png')),
          ),
        ),
      ],
    );
  }
}
