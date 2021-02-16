import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: SimpleUi(),
    ));

class SimpleUi extends StatelessWidget {
  const SimpleUi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hello men"),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_outline)
          ),
        ),
        body:Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            
          ),
        )
    );
  }
}
