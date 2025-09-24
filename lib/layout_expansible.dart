import 'package:flutter/material.dart';

class LayoutExpansible extends StatelessWidget {
  const LayoutExpansible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Expanded'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 80,
                color: Colors.red.shade700,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.brown.shade400,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 100,
                height: 120,
                color: Colors.amber.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
