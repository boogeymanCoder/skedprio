import "package:flutter/material.dart";
import 'package:skedprio/text.dart';
import 'actions.dart';
import 'title.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "My Flutter App",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("My App"),
      ),
      body: ListView(
        children: [
          Expanded(
            child: Image.asset("assets/images/image.jpg"),
          ),
          const GuideTitle(),
          const GuideActions(),
          const TextSection(),
        ],
      ),
    );
  }
}
