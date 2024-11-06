# Tugas 

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



