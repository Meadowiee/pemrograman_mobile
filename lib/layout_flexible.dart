import 'package:flutter/material.dart';

class LayoutFlexible extends StatelessWidget {
  const LayoutFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Flexible'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Row(
        children: [
          Flexible(flex: 1, child: Container(color: Colors.red.shade700)),
          Flexible(flex: 2, child: Container(color: Colors.brown.shade400)),
          Flexible(flex: 3, child: Container(color: Colors.amber.shade400)),
        ],
      ),
    );
  }
}
