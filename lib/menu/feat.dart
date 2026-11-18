import 'package:flutter/material.dart';

class FeatPage extends StatelessWidget {
  const FeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feat')),
      body: const Center(
        child: Text('Halaman Feat'),
      ),
    );
  }
}