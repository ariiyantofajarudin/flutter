import 'package:flutter/material.dart';

class messageScreen extends StatelessWidget {
  const messageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message - Ariyanto Fajarudin'),
      ),
      body: const Center(
        child: Text(
          'Message Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
