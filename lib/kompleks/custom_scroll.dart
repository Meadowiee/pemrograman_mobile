import 'package:flutter/material.dart';

void main() {
  runApp(CustomScroll());
}

class CustomScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo CustomScrollView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar = AppBar yang bisa collapse saat scroll
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Toko Buah",
                style: TextStyle(
                  color: const Color.fromARGB(255, 182, 230, 182),
                ),
              ),
              background: Image.network(
                "https://picsum.photos/id/75/600/300",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SliverList = daftar item seperti ListView
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.green),
                title: Text(items[index]),
                subtitle: Text("Harga Rp ${(index + 1) * 1000}"),
              );
            }, childCount: items.length),
          ),

          // SliverGrid = grid item di bawah list
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(child: Center(child: Text("Produk ${index + 1}")));
            }, childCount: 6),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // jumlah kolom
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}
