import 'package:flutter/material.dart';
import 'package:flutter_application_1/hello_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Bar title 2')),
      body: Center(child: HelloText()),
    );
  }
}
