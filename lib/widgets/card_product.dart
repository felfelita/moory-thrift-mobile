import 'package:moory_thrift/screens/list_thriftentry.dart';
import 'package:moory_thrift/screens/login.dart';
import 'package:moory_thrift/screens/thriftentry_form.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

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
    final request = context.watch<CookieRequest>();
    return Material(
      color: const Color(0xFFD2B48C), // Warna cokelat muda
      child: InkWell(
        onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!"),
              ),
            );

          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ThriftEntryFormPage(),
              ),
            );
          } else if (item.name == "Lihat Daftar Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ThriftEntryPage(),
              ),
            );
          } else if (item.name == "Logout") {
            final response = await request.logout(
              "http://127.0.0.1:8000/auth/logout/", // Jangan lupa trailing slash
            );
            String message = response["message"];
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("$message Sampai jumpa, $uname."),
                ),
              );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("$message"),
                ),
              );
            }
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
