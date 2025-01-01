import 'package:flutter/material.dart';

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Characters"),
        backgroundColor: Colors.grey,
      ),
      body: const Text("Sandbox"),
    );
  }
}