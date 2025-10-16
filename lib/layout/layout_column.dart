import 'package:flutter/material.dart';

class LayoutColumn extends StatelessWidget {
  const LayoutColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Column'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: Colors.red.shade700),
            Container(width: 150, height: 100, color: Colors.brown.shade400),
            Container(width: 200, height: 100, color: Colors.amber.shade300),
          ],
        ),
      ),
    );
  }
}
