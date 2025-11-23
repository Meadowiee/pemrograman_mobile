import 'package:flutter/material.dart';

void main() {
  runApp(SingleScroll());
}

class SingleScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo SingleChildScrollView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo SingleChildScrollView")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Produk Toko Buah",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Beberapa item panjang
            for (int i = 1; i <= 20; i++)
              Card(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Icon(Icons.shopping_cart, color: Colors.green),
                  title: Text("Buah ke-$i"),
                  subtitle: Text("Harga: Rp ${(i * 1000)}"),
                  trailing: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Anda memilih Buah ke-$i")),
                      );
                    },
                    child: Text("Beli"),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
