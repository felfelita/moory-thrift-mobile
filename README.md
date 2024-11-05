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
