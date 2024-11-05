# Tugas 7
**1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya**

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

**2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya**

**3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut**
**Fungsi setState()**
setState() adalah fungsi yang digunakan untuk memberi tahu Flutter bahwa keadaan (state) widget telah berubah dan perlu direbuild. Fungsi ini biasanya dipanggil dalam method yang merubah keadaan widget.
**Variabel yang Terdampak**
- Variable lokal di dalam State
- Variable yang disimpan di dalam object State
- Variable yang dikirim sebagai parameter ke constructor StatefulWidget

**4. Jelaskan perbedaan antara const dengan final**
**Perbedaan antara const dan final**
- **const**: Menunjukkan bahwa nilai variable tidak boleh berubah setelah konstruksi objek
- **final**: Menunjukkan bahwa nilai variable tidak boleh diubah setelah pertama kali dideklarasikan
Perbedaan utama adalah const tidak bisa diubah setelah konstruksi, sedangkan final hanya tidak boleh diubah setelah pertama kali dideklarasikan.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas**
