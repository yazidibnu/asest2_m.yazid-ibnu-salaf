import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class TukangOjek {
  String nama;
  String nomorPolisi;

  TukangOjek({required this.nama, required this.nomorPolisi});
}

class Transaksi {
  TukangOjek tukangOjek;
  int harga;

  Transaksi({required this.tukangOjek, required this.harga});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OPANGATIMIN App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<TukangOjek> tukangOjekList = [];
  List<Transaksi> transaksiList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OPANGATIMIN'),
      ),
      body: Column(
        children: [
          // Tampilkan list atau tabel nama, jumlah order, dan omzet tukang ojek
          // ...

          // Tombol untuk menambah tukang ojek
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TambahTukangOjekPage()),
              );
            },
            child: Text('Tambah Tukang Ojek'),
          ),

          // Tombol untuk menambah transaksi
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TambahTransaksiPage()),
              );
            },
            child: Text('Tambah Transaksi'),
          ),
        ],
      ),
    );
  }
}

class TambahTukangOjekPage extends StatelessWidget {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorPolisiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Tukang Ojek'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama Tukang Ojek'),
            ),
            TextField(
              controller: nomorPolisiController,
              decoration: InputDecoration(labelText: 'Nomor Polisi'),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambah tukang ojek ke list pada HomePage
                // ...

                Navigator.pop(context);
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}

class TambahTransaksiPage extends StatelessWidget {
  final TextEditingController hargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Transaksi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Dropdown untuk memilih tukang ojek dari list yang ada pada HomePage
            // ...

            TextField(
              controller: hargaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Harga'),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambah transaksi ke list pada HomePage
                // ...

                Navigator.pop(context);
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
