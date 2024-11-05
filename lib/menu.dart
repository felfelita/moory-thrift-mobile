import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});
    final String npm = '2306207165'; // NPM
    final String name = 'Felita Zahra'; // Nama
    final String className = 'PBP C'; // Kelas
    final List<ItemHomepage> items = [
         ItemHomepage("Lihat Daftar Produk", Icons.mood),
         ItemHomepage("Tambah Produk", Icons.add),
         ItemHomepage("Logout", Icons.logout),
    ];
    @override
    Widget build(BuildContext context) {
      // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
      return Scaffold(
        // AppBar adalah bagian atas halaman yang menampilkan judul.
        appBar: AppBar(
          title: const Text(
            'Moory Thrift',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0xFF8B4513), // Warna cokelat tanah
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(title: 'NPM', content: npm),
                  InfoCard(title: 'Name', content: name),
                  InfoCard(title: 'Class', content: className),
                ],
              ),
              const SizedBox(height: 16.0),
              Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Welcome to  Moory Thrift',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color(0xFF2F4F4F), // Abu-abu gelap
                        ),
                      ),
                    ),
                    GridView.count(
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

class InfoCard extends StatelessWidget {
  final String title;  // Judul kartu.
  final String content;  // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF5F5DC), // Beige lembut
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF8B4513), // Cokelat tanah
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              style: const TextStyle(color: Color(0xFF2F4F4F)), // Abu-abu gelap
            ),
          ],
        ),
      ),
    );
  }
}

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
