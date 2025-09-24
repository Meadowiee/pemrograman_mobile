import 'package:flutter/material.dart';

class LayoutRow extends StatelessWidget {
  const LayoutRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Row'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(width: 100, height: 80, color: Colors.red.shade700),
            Container(width: 100, height: 100, color: Colors.brown.shade400),
            Container(width: 100, height: 120, color: Colors.amber.shade300),
          ],
        ),
      ),
    );
  }
}
