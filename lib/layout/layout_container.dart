import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
  const LayoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Container'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 1.0),
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.brown),
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.amber.shade700,
          ),
          child: Text(
            "Hello, Flutter is Rocks",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
