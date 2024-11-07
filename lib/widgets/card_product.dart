import 'package:moory_thrift/screens/thriftentry_form.dart';
import 'package:flutter/material.dart';

class ItemHomepage {
     final String name;
     final IconData icon;

     ItemHomepage(this.name, this.icon);
 }

class ItemCard extends StatelessWidget {
  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFD2B48C), // Warna cokelat muda
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
          if (item.name == "Tambah Produk") {
            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThriftEntryFormPage(),
                      ),
                    );
                  }
          },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: const Color(0xFFFAF0E6), // Putih tulang
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF2F4F4F), // Abu-abu gelap
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}