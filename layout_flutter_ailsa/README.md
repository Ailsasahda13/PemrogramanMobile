# layout_flutter_ailsa
-- Ailsa Sahda Garizah

Langkah 3: Identifikasi Layout Diagram
--> Pada tahap ini dilakukan analisis terhadap tampilan antarmuka (UI) berdasarkan gambar yang diberikan, dengan tujuan untuk mengidentifikasi struktur dasar layout sebelum diimplementasikan ke dalam kode Flutter.

1. Identifikasi Struktur Utama Layout
Berdasarkan gambar, seluruh elemen disusun secara vertikal dari atas ke bawah, sehingga layout utama menggunakan widget:
- Column
Layout utama terdiri dari 4 bagian besar, yaitu:
1. Gambar (Image)
2. Bagian Judul (Title Section)
3. Bagian Tombol (Button Section)
4. Bagian Deskripsi (Text Section)

2. Bagian Gambar (Image Section)
Bagian paling atas merupakan sebuah gambar pemandangan.
- Menggunakan widget: Image
- Tidak memiliki child lain
- Berfungsi sebagai header visual

3. Bagian Judul (Title Section)
Bagian ini terdiri dari:
- Judul tempat
- Lokasi
- Ikon bintang
- Jumlah rating
Struktur layout: Menggunakan Row (karena elemen tersusun horizontal)
Isi Row:
- Column (kiri):
- Text (judul)
- Text (lokasi)
- Icon (bintang)
- Text (jumlah rating)

4. Bagian Tombol (Button Section)
Bagian ini terdiri dari 3 tombol:
- CALL
- ROUTE
- SHARE
Struktur layout: Menggunakan Row
Isi Row:
3 buah Column, masing-masing berisi:
- Icon
- Text

5. Bagian Deskripsi (Text Section)
Bagian ini berisi teks penjelasan panjang mengenai lokasi.
Struktur:
- Menggunakan widget Text
- Dibungkus dengan Padding

=======
jawaban soal langkah 4: implementasi title row
soal no 1.
1. Expanted: supaya teks kiri melebar, dan mendorong icon bintang ke kanan
    CrossAxisAlignment.start: agar teks rata kiri (tidak bergeser ke tengah)
soal no 2. 
2. fungsi:memberikan jarak antara judul dan lokasi
    color: Colors.grey[500]: memberi warna abu- abu pada subjudul
soal no 3.
3. fungsi: memberikan icon bintang warna merah dan angka ratingnya