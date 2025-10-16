import 'package:flutter/material.dart';

void main() {
  runApp(ListView2());
}

class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo ListView Children',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Static List View")),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.red),
              title: Text("Apel"),
              subtitle: Text("Harga: Rp 5.000"),
              trailing: Text("20 pcs"),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Anda memilih Apel")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.orange),
              title: Text("Jeruk"),
              subtitle: Text("Harga: Rp 6.000"),
              trailing: Text("15 pcs"),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Anda memilih Jeruk")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.green),
              title: Text("Mangga"),
              subtitle: Text("Harga: Rp 10.000"),
              trailing: Text("30 pcs"),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Anda memilih Mangga")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.yellow),
              title: Text("Pisang"),
              subtitle: Text("Harga: Rp 4.000"),
              trailing: Text("40 pcs"),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Anda memilih Pisang")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.pink),
              title: Text("Strawberry"),
              subtitle: Text("Harga: Rp 15.000"),
              trailing: Text("40 pcs"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda memilih Strawberry")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.purple),
              title: Text("Blueberry"),
              subtitle: Text("Harga: Rp 20.000"),
              trailing: Text("30 pcs"),
            ),
          ),
        ],
      ),
    );
  }
}
