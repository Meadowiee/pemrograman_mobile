import 'package:flutter/material.dart';

void main() {
  runApp(GridView2());
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo GridView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {"nama": "Apel", "harga": "Rp 5.000", "stok": "20"},
    {"nama": "Jeruk", "harga": "Rp 6.000", "stok": "15"},
    {"nama": "Mangga", "harga": "Rp 10.000", "stok": "30"},
    {"nama": "Pisang", "harga": "Rp 4.000", "stok": "40"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toko Buah (GridView)")),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // jumlah kolom
          crossAxisSpacing: 10, // jarak horizontal antar kotak
          mainAxisSpacing: 10, // jarak vertikal antar kotak
          childAspectRatio: 3 / 2, // rasio lebar : tinggi
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda memilih ${item["nama"]}")),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket, color: Colors.green, size: 40),
                  SizedBox(height: 8),
                  Text(
                    item["nama"]!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Harga: ${item["harga"]}"),
                  Text(
                    "${item["stok"]} pcs",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
