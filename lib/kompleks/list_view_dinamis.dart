import 'package:flutter/material.dart';

void main() {
  runApp(ListViewApp());
}

class ListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo ListView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    // list data
    {"nama": "Apel", "harga": "Rp 5.000", "stok": "20"},
    {"nama": "Jeruk", "harga": "Rp 6.000", "stok": "15"},
    {"nama": "Mangga", "harga": "Rp 10.000", "stok": "30"},
    {"nama": "Pisang", "harga": "Rp 4.000", "stok": "40"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toko Buah")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.amber.shade700,
              ),
              title: Text(item["nama"]!),
              subtitle: Text("Harga: ${item["harga"]}"),
              trailing: Text(
                "${item["stok"]} pcs",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda memilih ${item["nama"]}")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
