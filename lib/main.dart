import "package:flutter/material.dart";

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _increment() {
    setState(
      () {
        _count++;
      },
    );
  }

  void _decrement() {
    setState(
      () {
        _count--;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$_count',
            style: const TextStyle(
              fontSize: 50,
            )),
        ElevatedButton(
          onPressed: _increment,
          child: const Text("Increment"),
        ),
        ElevatedButton(
          onPressed: _decrement,
          child: const Text("Decrement"),
        )
      ],
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}
