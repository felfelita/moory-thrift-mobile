import 'package:flutter/material.dart';
import 'package:moory_thrift/models/thrift_entry.dart';

class ThriftEntryDetailPage extends StatelessWidget {
  final ThriftEntry item;

  const ThriftEntryDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.fields.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Harga: Rp.${item.fields.price},00"),
            const SizedBox(height: 8),
            Text("Deskripsi: ${item.fields.description}"),
            const SizedBox(height: 8),
            Text("Kondisi: ${item.fields.condition}"),
            const SizedBox(height: 8),
            Text("Tanggal Ditambahkan: ${item.fields.time}"),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali ke Daftar Produk"),
            ),
          ],
        ),
      ),
    );
  }
}
