import 'package:flutter/material.dart';

class MovieMainScreen extends StatelessWidget {
  const MovieMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Movie'),
      ),
      body: Text('hello'),
    );
  }
}