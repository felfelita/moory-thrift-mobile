# Tugas 7

# 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya

  **Stateless Widget**
  
  Stateless widget adalah widget yang tidak dapat berubah atau mengubahnya sendiri. Contoh widget stateless di Flutter adalah:
  - Icon
  - Text  
  - Container
  - Padding
  - SizedBox
  
  Karakteristik stateless widget:
  - Tidak memiliki keadaan (state) yang dapat berubah
  - Build methodnya selalu sama setiap kali dipanggil
  - Tidak memiliki metode setState()
  
  **Stateful Widget**
  
  Stateful widget adalah widget yang dapat berubah atau mengubah dirinya sendiri. Contoh widget stateful di Flutter adalah:

  - Checkbox
  - Radio Button
  - Slider
  - TextField
  - Form
  
  Karakteristik stateful widget:
  - Memiliki keadaan (state) yang dapat berubah
  - Build methodnya mungkin akan berbeda-beda setiap kali dipanggil
  - Memiliki metode setState() untuk meminta rebuild
  
  Perbedaan utama antara keduanya:
  1. Mampu berubah: Stateful bisa berubah, stateless tidak
  2. Metode setState(): Hanya ada di stateful
  3. Lifecycle: Stateful memiliki lifecycle yang lebih kompleks
  
# 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya
  Berikut adalah daftar widget yang digunakan dalam proyek ini beserta fungsinya:
  
  **1. Scaffold**
  
  Scaffold adalah widget dasar yang menyediakan struktur halaman dengan AppBar dan body. Fungsi utamanya adalah:

  - Memberi struktur dasar untuk layout halaman
  - Mengatur AppBar di bagian atas halaman
  - Menyediakan area untuk body content
  
  **2. AppBar**
  
  Widget AppBar digunakan untuk menampilkan judul halaman dan navigasi. Fungsi utamanya adalah:
  
  - Menampilkan judul aplikasi ("Moory Thrift")
  - Memberi tampilan konsisten di bagian atas halaman
  - Bisa digunakan untuk navigasi melalui menu dropdown
  
  **3. Padding**
  
  Padding widget digunakan untuk memberikan ruang kosong sekeliling child widget. Fungsi utamanya adalah:
  
  - Meningkatkan readability dengan memberi ruang antar komponen
  - Mengatur jarak antara elemen dalam layout
  
  **4. Column**
  
  Column widget digunakan untuk mengatur child widget secara vertikal. Fungsi utamanya adalah:

  - Memungkinkan pengaturan vertical dari beberapa widget
  - Mendukung responsive design dengan menggunakan properti seperti `crossAxisAlignment`
  
  **5. Row**
  
  Row widget mirip dengan Column tetapi digunakan untuk pengaturan horizontal. Fungsi utamanya adalah:
  
  - Mengatur child widget secara horizontal
  - Mendukung responsive design dengan menggunakan properti seperti `mainAxisAlignment`
  
  **6. InfoCard**
  
  InfoCard adalah widget custom yang digunakan untuk menampilkan informasi kartu. Fungsi utamanya adalah:
  
  - Menampilkan judul dan isi kartu dengan gaya yang konsisten
  - Responsive terhadap ukuran layar
  
  **7. GridView.count**
  
  GridView.count digunakan untuk membuat grid layout dinamis. Fungsi utamanya adalah:
  
  - Membuat layout berbentuk grid untuk item-item
  - Mendukung responsif dengan pengaturan jumlah kolom

  **8. Material**
  
  Material widget digunakan sebagai latar belakang untuk widget lain. Fungsi utamanya adalah:
  
  - Memberi efek material design pada widget anak
  - Mengatur warna dan efek teksur
  
  **9. InkWell**
  
  InkWell widget digunakan untuk membuat widget terektak. Fungsi utamanya adalah:
  
  - Menerima interaksi ketika ditekan
  - Menyediakan visual feedback saat ditekan
  
  **10. SnackBar**
  
  SnackBar widget digunakan untuk menampilkan pesan sementara. Fungsi utamanya adalah:
  
  - Menampilkan pesan kecil di bagian bawah layar
  - Digunakan untuk memberi feedback kepada pengguna
  
  **11. Text**

  Text widget digunakan untuk menampilkan teks. Fungsi utamanya adalah:
  
  - Menampilkan teks dengan gaya yang dapat disetel
  - Digunakan untuk judul, label, dan teks deskriptif
  
  **12. Icon**
  
  Icon widget digunakan untuk menampilkan ikon. Fungsi utamanya adalah:
  
  - Menampilkan gambar atau simbol
  - Bisa dikombinasikan dengan teks untuk menunjukkan fungsi
  
  **13. Container**
  
  Container widget digunakan untuk membungkus dan membatasi child widget. Fungsi utamanya adalah:
  
  - Memberi batasan pada ukuran dan posisi child
  - Menyediakan padding dan margin
  
  **14. Card**
  
  Card widget digunakan untuk membuat kartu dengan efek elevasi. Fungsi utamanya adalah:

  - Memberi tampilan kartu dengan efek elevasi
  - Mudah dibaca dan memiliki kontras dengan background
  
  **15. SizedBox**
  
  SizedBox widget digunakan untuk memberi spasi kosong. Fungsi utamanya adalah:
  
  - Memberi spasi tambahan dalam layout
  - Bermanfaat untuk alignment dan spacing
  
  **16. MediaQuery**
  
  MediaQuery widget digunakan untuk mendapatkan informasi tentang perangkat. Fungsi utamanya adalah:
  
  - Mendapatkan ukuran layar dan orientasi perangkat
  - Digunakan untuk membuat desain responsif

# 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
  **Fungsi setState()**
  setState() adalah fungsi yang digunakan untuk memberi tahu Flutter bahwa keadaan (state) widget telah berubah dan perlu direbuild. Fungsi ini biasanya dipanggil dalam method yang 
  merubah keadaan widget.
  **Variabel yang Terdampak**
  - Variable lokal di dalam State
  - Variable yang disimpan di dalam object State
  - Variable yang dikirim sebagai parameter ke constructor StatefulWidget
  
# 4. Jelaskan perbedaan antara const dengan final
  **Perbedaan antara const dan final**
  - **const**: Menunjukkan bahwa nilai variable tidak boleh berubah setelah konstruksi objek
  - **final**: Menunjukkan bahwa nilai variable tidak boleh diubah setelah pertama kali dideklarasikan
  Perbedaan utama adalah const tidak bisa diubah setelah konstruksi, sedangkan final hanya tidak boleh diubah setelah pertama kali dideklarasikan.

# 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas
1. Buat proyek Flutter baru dengan menjalankan perintah `flutter create moory_thrift` di terminal.
2. Tambahkan file baru bernama `menu.dart` pada path moory_thrift/lib.
3. Pindahkan kode yang berisi kelas `MyHomePage` dan `_MyHomePageState` ke `menu.dart`, lalu tambahkan impor `moory_thrift/menu.dart` agar aplikasi dapat mengenali kelas `MyHomePage`.
4. Ubah widget pada `menu.dart` menjadi stateless widget.
5. Buat widget `InfoCard` dan `Button Card` dengan ikon di `menu.dart`.
6. Perbarui tema warna aplikasi di `main.dart`.
7. Tambahkan variabel `color` pada `ItemHomepage`.
8. Tambahkan warna khusus pada masing-masing tombol.
9. Lakukan `git add`, `commit`, dan `push` untuk menyimpan perubahan ke repository.

# Tugas 8

# Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
**Kegunaan const di Flutter**
Const dalam Flutter digunakan untuk membuat objek statis yang tidak dapat diubah setelah pembuatan. 
**Keuntungannya antara lain:**
- Optimasi performansi: Flutter dapat melakukan optimasi yang lebih baik untuk objek konstan.
- Pengurangan memori: Objek konstan tidak perlu disimpan dalam heap.
- Tidak ada risiko ubahnya nilai secara acak atau tidak diharapkan.

**Gunakan const ketika:**
- Membuat widget statis yang tidak akan berubah.
- Menyediakan nilai default untuk properti widget.
- Membuat fungsi yang selalu mengembalikan hasil yang sama.

Jangan gunakan const jika nilai dapat berubah atau bergantung pada kondisi runtime.

# Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
**Penggunaan Column dan Row**
Column dan Row adalah widget layout dasar di Flutter yang digunakan untuk mengatur widget secara vertikal atau horizontal.

**Perbandingan Column dan Row**
**Orientasi:**
- Column: Mengatur widget secara vertikal dari atas ke bawah.
- Row: Mengatur widget secara horizontal dari kiri ke kanan.
**Properti utama:**
- Column: mainAxisAlignment dan crossAxisAlignment
- Row: mainAxisAlignment dan crossAxisAlignment
**Contoh implementasi:**
Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Text('Top'),
    Text('Middle'),
    Text('Bottom'),
  ],
);

Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.person),
  ],
);
# Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada halaman form saya, elemen input yang digunakan adalah:
- **TextFormField untuk Nama Produk (_productName)**
Untuk menginput nama produk dengan validator agar tidak kosong.
- **TextFormField untuk Kondisi Produk (_condition)**
Untuk menginput kondisi produk, misalnya "New" atau "Used", dengan validator agar tidak kosong.
- **TextFormField untuk Deskripsi (_description)**
Untuk menginput deskripsi produk dengan validator agar tidak kosong.
- **TextFormField untuk Harga (_price)**
Untuk menginput harga dengan validator agar tidak kosong dan harus angka.
- **ElevatedButton untuk Tombol Simpan**
Untuk menyimpan data setelah validasi dan menampilkan dialog konfirmasi.
Elemen Input Lain yang Tidak Digunakan:
- **DropdownButtonFormField**: Cocok untuk pilihan terbatas seperti kondisi produk.
- **Checkbox** / Radio: Untuk input pilihan biner, seperti persetujuan.
- **Switch**: Untuk opsi aktif/nonaktif.
- **Slider**: Untuk input nilai dalam rentang tertentu, seperti harga atau ukuran.
**DatePicker** / TimePicker: Untuk input tanggal atau waktu jika diperlukan.
# Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk mengatur tema (theme) dalam aplikasi Flutter agar tampilannya konsisten, saya menggunakan properti ThemeData pada MaterialApp di main.dart. Dengan menggunakan tema global ini, saya dapat menyesuaikan warna, font, dan gaya elemen UI di seluruh aplikasi, sehingga tampilan aplikasi tetap seragam/konsisten di semua halaman dan widget.

Pada aplikasi ini, saya sudah menerapkan tema sebagian besar dengan warna konsisten seperti pada:
- **AppBar** menggunakan warna cokelat (Color(0xFF8B4513)).
- **InfoCard** menggunakan warna beige lembut untuk latar belakang, sedangkan ItemCard menggunakan warna cokelat muda untuk menjaga konsistensi.
- **Tombol dan teks** juga memanfaatkan warna dari tema yang diatur di AppBar atau tombol, sehingga aplikasi tampak seragam.
# Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Dalam menangani navigasi, saya menggunakan beberapa method yang umum digunakan, yaitu:
- **Pop (pop())**
Menghapus rute yang sedang aktif (rute paling atas) dari stack Navigator. Hal ini membuat aplikasi kembali ke rute yang ada di bawahnya dalam stack, yang kemudian akan tampil di layar.
- **Push Replacement (pushReplacement())**
Mengganti rute aktif dengan rute baru tanpa menambah rute lama ke dalam stack. Rute yang sedang ditampilkan akan dihapus dari stack dan langsung digantikan dengan rute baru, tanpa memengaruhi elemen-elemen rute lain yang ada di bawahnya pada stack.
- **Push (push())**
Menambahkan sebuah rute baru ke dalam stack yang dikelola oleh Navigator sehingga rute baru tersebut akan berada di paling atas stack dan otomatis tampil pada layar pengguna.


# Tugas 9

**Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**

**Kebutuhan Membuat Model untuk Data JSON**
1. Struktur Data Konsisten
   - Memastikan struktur data yang dikirimkan atau diterima selalu sesuai dengan yang diharapkan.
2. Validasi Otomatis
   - Melakukan validasi otomatis terhadap struktur dan tipe data.
3. Efisiensi Pengolongan Data
   - Memungkinkan pengolongan data yang lebih efisien.
4. Konsistensi Antar Sistem
   - Memastikan konsistensi struktur data antar sistem.

**Dampak Tidak Membuat Model**
1. Kesalahan Parsing
   - Data yang tidak sesuai struktur dapat menyebabkan kesalahan parsing.
2. Kesulitan Akses Data
   - Struktur data tidak konsisten membuat sulit mengakses data.
3. Kesalahan Validasi Data
   - Sulit memastikan data memenuhi kriteria validasi.
4. Performa Buruk
   - Pengolongan data tidak efisien mempengaruhi performa aplikasi.
5. Keamanan Data Lemah
   - Risiko data tidak valid atau berbahaya dapat masuk ke sistem.
Membuat model untuk data JSON sangat penting untuk memastikan konsistensi, efisiensi, dan keamanan data selama proses pengiriman dan penerimaan data JSON.

**Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini**
Fungsi dari library HTTP adalah:

1. Memungkinkan konfigurasi perangkat sebagai klien HTTP untuk mengirimkan permintaan ke server dan memparse respons.
2. Memungkinkan definisi fungsi panggilan balik untuk menangani respons HTTP.
3. Memberikan akses ke informasi penting dari respons HTTP seperti status kode dan isi tubuh.
4. Membuat proses pengiriman dan parsing respons HTTP menjadi lebih mudah dan terstruktur.
Dengan demikian, library ini memfasilitasi pengembangan klien HTTP dengan menyediakan struktur data yang tepat, fungsi parsing, dan API untuk mengirimkan dan menerima permintaan/respons HTTP secara efisien.

**Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**
**Fungsi CookieRequest**
- Mengelola cookies HTTP dalam permintaan dan respons.
- Menyimpan dan mengirimkan cookies HTTP.
- Mengatur header cookie pada permintaan HTTP.
- Memproses cookies yang dikirimkan bersama dengan respons HTTP.
- Pengiriman Instance CookieRequest
**Mengapa instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter?**
- Konsistensi State: Memastikan semua komponen memiliki akses ke informasi cookies yang sama dan terkini.
- Efisiensi: Menghindari pembuatan instance CookieRequest yang berbeda-beda di setiap komponen.
- Manajemen Global: Memungkinkan pengelolaan cookies secara global di seluruh aplikasi.
- Akses Sederhana: Memudahkan akses ke fungsi CookieRequest dari mana saja di aplikasi.
- Kompabilitas dengan Sistem State Management: Bisa digunakan dengan sistem manajemen state seperti Provider atau BLoC.
Dengan membagikan instance CookieRequest ke semua komponen, aplikasi dapat memiliki manajemen cookies yang konsisten dan efisien di seluruh sistem.

**Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**
1. Input Data:
   - Pengguna memasukkan data melalui widget input seperti TextField.
2. Pengolahan Data:
   - Data diproses dan diubah format sesuai.
3. State Management:
   - Data disuplai ke state management solution seperti setState atau Provider.
4. Update UI:
   - Flutter mengupdate widget yang terpengaruh secara otomatis.
5. Rendering:
   - Widget dirender ulang dengan data baru.
6. Display:
   - Data akhir ditampilkan pada UI melalui widget sesuai.
7. Networking (opsional):
   - Jika perlu, data dikirim ke server dan diperoleh respons.
8. Error Handling:
   - Flutter menghandle kesalahan dan memberi feedback kepada pengguna.
Dengan demikian, data dari input dapat efisien diproses dan ditampilkan pada UI Flutter melalui mekanisme state management yang efektif.


**Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**
1. Input Data:
   - Pengguna memasukkan data login/register melalui widget input di Flutter.
2. Pengolahan di Flutter:
   - Data dikirim ke server Django melalui HTTP request.
   - JWT token diperoleh dari respons server.
3. Pengolahan di Django:
   - Server verifikasi kredensial.
   - JWT token dibuat dan dikirimkan kembali ke Flutter.
4. Autentikasi:
   - Flutter menyimpan JWT token secara aman.
   - Token digunakan untuk autentikasi setiap request selanjutnya.
5. Tampilnya Menu:
   - Flutter memeriksa apakah token masih valid.
   - Jika valid, UI diupdate untuk menampilkan menu yang sesuai.
6. Logout:
   - Pengguna mengakses fitur logout di Flutter.
   - Token dihapus dari SharedPreferences.
   - Server Django menghapus cookie JWT.
Dengan demikian, proses autentikasi melibatkan interaksi antara Flutter sebagai klien dan Django sebagai server, dengan JWT sebagai metode autentikasi yang aman dan efisien.
