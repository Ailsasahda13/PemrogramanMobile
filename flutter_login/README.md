# FIREBASE API WEATHER

Name: Ailsa Sahda GArizah
Class: SIB 2G
NIM: 244107060006

Laporan Praktikum Flutter – Minggu 12<br>
Integrasi Firebase Authentication dan OpenWeather API<br>

Dokumen ini merupakan laporan praktikum yang menjelaskan proses integrasi Firebase Authentication dan OpenWeather API ke dalam aplikasi Flutter. Laporan ini mencakup proses konfigurasi, implementasi, hingga hasil akhir dari aplikasi yang telah dibuat.<br>

Proses Setup
1. Konfigurasi Firebase<br>
Pada tahap awal, dilakukan konfigurasi backend menggunakan Firebase dengan langkah-langkah berikut:<br>
    - Membuat project baru di Firebase Console dengan nama “login-weather-ailsa”<br>
    - Mengaktifkan fitur Authentication dengan metode Email/Password<br>
    - Menambahkan akun pengguna uji coba secara manual pada menu Users<br>
Firebase digunakan sebagai sistem autentikasi untuk mengelola proses login pengguna secara aman.<br>

2. Integrasi Flutter dengan Firebase (FlutterFire CLI)
Selanjutnya dilakukan integrasi project Flutter dengan Firebase menggunakan FlutterFire CLI dengan langkah berikut:
    - Login ke Firebase CLI untuk menghubungkan akun Google<br>
    - Menghubungkan project Flutter dengan Firebase project yang telah dibuat<br>
    - Menghasilkan file konfigurasi otomatis bernama firebase_options.dart<br>
    - Menginisialisasi Firebase di dalam file main.dart menggunakan Firebase.initializeApp()<br>
Proses ini memastikan aplikasi Flutter dapat terhubung dengan layanan Firebase.<br>

-----------------------------------------------------
Hasil Analysis<br>
1. Pembuatan Firebase Project (Project Name)
    -> Langkah pertama dalam integrasi Firebase adalah membuat project baru pada Firebase Console. Project ini berfungsi sebagai wadah utama untuk semua layanan Firebase yang akan digunakan, seperti Authentication dan database.
    ![ProjectName](images/project_name.png)

2. Mengaktifkan Email/Password pada Firebase Authentication<br>
   -> Langkah selanjutnya integrasi Firebase Authentication, langkah pertama yang dilakukan adalah mengaktifkan metode login Email/Password di Firebase Console.<br>
   ![Aktivasi](images/password.png)

3. Pembuatan Email dan Password untuk Login (Firebase Authentication)<br>
    -> Setelah Aktivasi email/password berhasil dibuat dan fitur Authentication diaktifkan, langkah berikutnya adalah membuat akun pengguna yang akan digunakan untuk login ke aplikasi.<br>

4. Halaman Login 
    -> Halaman login bertujuan untuk:<br>
    - Memverifikasi identitas pengguna<br>
    - Membatasi akses agar hanya user terdaftar yang bisa masuk aplikasi<br>
    - Menghubungkan aplikasi Flutter dengan Firebase Authentication<br>
    ![Login](images/login.png)

5. Halaman Weather<br>
    -> Halaman Weather merupakan halaman utama setelah pengguna berhasil login melalui Firebase Authentication. Halaman ini berfungsi untuk menampilkan informasi cuaca secara real-time berdasarkan kota yang dicari oleh pengguna menggunakan OpenWeather API.<br>
    Implementasi:<br>
    - Malang<br>
    ![weather](images/malang.png)
    - Kediri<br>
    ![weather](images/kediri.png)

kesimpulan<br>
Secara keseluruhan, praktikum ini berhasil menunjukkan bahwa Flutter dapat digunakan untuk membangun aplikasi mobile yang dinamis, terhubung dengan layanan backend (Firebase), serta terintegrasi dengan API eksternal secara efektif.
