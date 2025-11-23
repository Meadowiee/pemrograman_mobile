import 'package:flutter/material.dart';

void main() {
  runApp(KalkulatorTambahApp());
}

class KalkulatorTambahApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Tambah',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: KalkulatorTambah(),
    );
  }
}

class KalkulatorTambah extends StatefulWidget {
  @override
  _KalkulatorTambahState createState() => _KalkulatorTambahState();
}

class _KalkulatorTambahState extends State<KalkulatorTambah> {
  double angka1 = 0; // menyimpan nilai input pertama
  double angka2 = 0; // menyimpan nilai input kedua
  double hasil = 0; // menyimpan hasil penjumlahan

  // fungsi untuk menghitung hasil penjumlahan
  void _hitungTambah() {
    setState(() {
      hasil = angka1 + angka2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kalkulator Tambah'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              // ini untuk input angka pertama
              decoration: InputDecoration(
                labelText: 'Masukkan Angka Pertama',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number, // hanya menerima input angka
              onChanged: (value) {
                angka1 = double.tryParse(value) ?? 0;
              }, // memperbarui angka1 saat input berubah
            ),
            SizedBox(height: 16),
            TextField(
              // ini adalah input kedua
              decoration: InputDecoration(
                labelText: 'Masukkan Angka Kedua',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                angka2 = double.tryParse(value) ?? 0;
              }, // memperbarui angka2 saat input berubah
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungTambah, // memanggil fungsi hitung
              child: Text('Hitung +'),
            ),
            SizedBox(height: 20),
            Text(
              'Hasil: $hasil', // menampilkan hasil
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
