import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("الصفحة الرئسية")),
      body: Center(
        child: Text(
          "النص هو:\n$data",
          style: const TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
