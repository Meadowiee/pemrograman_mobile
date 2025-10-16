import 'package:flutter/material.dart';
import 'layout_container.dart';
import 'layout_row.dart';
import 'layout_column.dart';
import 'layout_expansible.dart';
import 'layout_flexible.dart';
import 'layout_stack.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shafina Ardelia',
      home: Tugas1(),
    ),
  );
}

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key});

  @override
  State<Tugas1> createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _reloadCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        actions: [],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(
                "Layout App",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.crop_square),
              title: const Text("Layout Container"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutContainer()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_agenda),
              title: const Text("Layout Column"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutColumn()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_week),
              title: const Text("Layout Row"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutRow()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.expand),
              title: const Text("Layout Expanded"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutExpansible()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.swap_vert),
              title: const Text("Layout Flexible"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutFlexible()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.layers),
              title: const Text("Layout Stack"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutStack()),
                );
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter', style: const TextStyle(fontSize: 20)),
            Text('$_counter', style: const TextStyle(fontSize: 36)),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _reloadCounter,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            child: const Icon(Icons.replay),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _decrementCounter,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _incrementCounter,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
