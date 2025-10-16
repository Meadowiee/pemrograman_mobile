import 'package:flutter/material.dart';

class LayoutStack extends StatelessWidget {
  const LayoutStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Stack"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.amber.shade400),
            Container(width: 150, height: 150, color: Colors.red.shade700),
            Container(width: 100, height: 100, color: Colors.brown.shade400),
          ],
        ),
      ),
    );
  }
}
