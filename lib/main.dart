import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: FirstScreen(),
    ),
  );
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Списки"),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
