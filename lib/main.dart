import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset("assets/images/photo1.jpg"),
            ),
            Expanded(
              flex: 2,
              child: Image.asset("assets/images/photo2.jpg"),
            ),
            Expanded(
              child: Image.asset("assets/images/photo3.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
