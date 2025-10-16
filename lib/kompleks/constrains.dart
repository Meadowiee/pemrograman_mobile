import 'package:flutter/material.dart';

void main() {
  runApp(const ConstraintsPage());
}

class ConstraintsPage extends StatelessWidget {
  const ConstraintsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh Constraints')),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
              minHeight: 100,
              maxWidth: 250,
              maxHeight: 200,
            ),
            child: Container(
              color: Colors.blue,
              width: 300,
              height: 150,
              child: const Center(
                child: Text(
                  'Constrained Box',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
