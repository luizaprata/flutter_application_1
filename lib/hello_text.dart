import 'package:flutter/material.dart';

class HelloText extends StatefulWidget {
  const HelloText({super.key});

  @override
  State<StatefulWidget> createState() {
    return HelloState();
  }
}

class HelloState extends State<HelloText> {
  String helloText = '';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
          key: const Key('mySpecialEditableText1234'),
          onChanged: (text) => sayHello(text),
          controller: myController),
      Text(helloText)
    ]);
  }

  void sayHello(String text) {
    setState(() {
      helloText = "Hello ${text.toUpperCase()}!";
    });
  }

  final myController = TextEditingController();
}
