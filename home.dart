import 'package:flutter/material.dart';
import 'SecondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController firstCtrl = TextEditingController();
  TextEditingController secondCtrl = TextEditingController();

  @override
  void dispose() {
    firstCtrl.dispose();
    secondCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text("Dark Mode UI"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: firstCtrl,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "النص الأول",
                labelStyle: const TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: secondCtrl,
              readOnly: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "النص الثاني",
                labelStyle: const TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  secondCtrl.text = firstCtrl.text;
                });
              },
              child: const Text("انسخ النص"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SecondPage(data: firstCtrl.text),
                  ),
                );
              },
              child: const Text("انتقال لصفحة الرئسية"),
            ),
          ],
        ),
      ),
    );
  }
}
