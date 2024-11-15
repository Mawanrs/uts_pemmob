**Mobile Apps Pengenalan Wisata Indonesia**
Bussines Domain : Mobile App Wisata Indonesia
Bussines Process : Membantu wisatawan dalam menemukan dan mengakses informasi terperinci mengenai tempat-tempat wisata di Indonesia.
Date: 15 - November - 2024

**Introduction**

Indonesia memiliki banyak destinasi wisata menarik yang mencakup keindahan alam, kekayaan budaya, situs bersejarah, dan wisata modern. Namun, wisatawan sering mengalami kesulitan untuk mendapatkan informasi yang jelas, terperinci, dan mudah diakses mengenai destinasi-destinasi tersebut. Aplikasi ini hadir sebagai solusi yang memberikan informasi terstruktur mengenai destinasi wisata di Indonesia, dengan fokus khusus pada daerah Bali dan Yogyakarta.

Aplikasi ini dirancang untuk membantu wisatawan dalam menemukan dan memahami berbagai tempat wisata di Indonesia. Informasi yang disediakan mencakup deskripsi, gambar, jam operasional, harga tiket, dan lokasi yang dapat diakses melalui tautan peta. Selain itu, aplikasi ini juga memungkinkan wisatawan untuk memberikan ulasan dan rating pada destinasi yang telah dikunjungi, memberikan pengalaman yang lebih interaktif dan bermanfaat bagi pengguna lainnya.

Dengan antarmuka yang intuitif dan informasi yang akurat, aplikasi ini bertujuan untuk memudahkan eksplorasi wisatawan, mendukung pengembangan pariwisata Indonesia, dan memberikan pengalaman wisata yang nyaman serta informatif.

**Objective**

- Memudahkan wisatawan menemukan informasi lengkap tentang destinasi wisata di Indonesia, termasuk deskripsi, gambar, jam operasional, harga tiket, dan lokasi.

**Scope**

Tidak ada batasan akses, dapat digunakan oleh siapa saja.

Criteria:

Wisatawan dapat menemukan informasi destinasi wisata dengan mudah melalui daftar yang telah tersedia di aplikasi.

**Businees Requirement**

1. **Business Requirement Definition**

| Produk | Keterangan |
| --- | --- |
| Jenis Layanan | Layanan Informasi |
| Definisi | Indonesia merupakan negara yang kaya akan destinasi wisata yang memikat, mencakup wisata alam, budaya, sejarah, hingga wisata modern. Namun, keterbatasan informasi sering kali menjadi hambatan bagi wisatawan untuk menemukan tempat wisata yang sesuai dengan kebutuhan mereka. Untuk mengatasi masalah ini, diperlukan sebuah aplikasi mobile berbasis teknologi yang dapat memberikan informasi lengkap dan terstruktur mengenai berbagai destinasi wisata di Indonesia. Aplikasi ini dirancang untuk memudahkan wisatawan dalam menemukan dan mengeksplorasi tempat-tempat wisata di Bali dan Yogyakarta. Pengguna dapat mengakses informasi singkat yang mencakup gambar, deskripsi, jam operasional, harga tiket, dan lokasi dari setiap destinasi wisata. Dengan antarmuka yang intuitif dan pengalaman pengguna yang optimal, aplikasi ini bertujuan untuk menjadi solusi praktis dalam mendukung pengembangan pariwisata Indonesia, sekaligus memberikan pengalaman yang nyaman dan informatif bagi wisatawan domestik maupun internasional. |
| Abstrak (narasi) | Indonesia memiliki berbagai destinasi wisata yang menarik, mulai dari keindahan alam hingga situs-situs bersejarah dan budaya yang memukau. Meski demikian, wisatawan sering mengalami kesulitan dalam mendapatkan informasi lengkap dan terstruktur mengenai tempat wisata di Indonesia. Oleh karena itu, aplikasi mobile ini hadir untuk memberikan solusi praktis dengan menyediakan informasi terperinci tentang destinasi wisata di Bali dan Yogyakarta.<br><br>Aplikasi ini memudahkan wisatawan dalam menemukan dan mengeksplorasi tempat wisata melalui daftar destinasi yang dilengkapi dengan gambar, deskripsi, jam operasional, harga tiket, dan lokasi yang dapat diakses melalui peta. Dengan antarmuka yang ramah pengguna, aplikasi ini menawarkan pengalaman eksplorasi yang nyaman dan informatif bagi wisatawan domestik maupun internasional, mendukung pengembangan sektor pariwisata Indonesia. |

1. **Penjelasan Fungsi**

<table><tbody><tr><th><p>No.</p></th><th><p>Keterangan</p></th></tr><tr><td></td><td><p><strong>Fungsi Teknis</strong></p><ol><li>Destinasi Wisata</li></ol><p>Pengguna dapat memilih destinasi wisata yang tersedia (Bali dan Yogyakarta).</p><ol><li>Navigasi Peta</li></ol><p>Pada fitur ini Pengguna dapat melihat lokasi tempat wisata pada peta melalui URL peta yang disediakan.</p><ol><li>Pemesanan Tiket</li></ol><p>Pengguna dapat memesan tiket untuk destinasi wisata tertentu dengan menekan tombol "Pesan Sekarang”, akan mengarahkan pengguna ke URL pemesanan tiket terkait destinasi tersebut.</p><ol><li>Ulasan Pengguna</li></ol><p>Pengguna dapat memberikan ulasan mengenai tempat wisata.</p></td></tr><tr><td></td><td><p><strong>Fungsi Strategis</strong></p><ol><li>Efektivitas<br>Aplikasi ini menyediakan informasi wisata secara terstruktur, membantu wisatawan yang memerlukan akses cepat dan lengkap ke destinasi wisata di Indonesia.</li><li>Kelebihan<br>Desain antarmuka yang sederhana dan intuitif menjadikan aplikasi ini mudah digunakan, sehingga wisatawan dapat menemukan informasi yang mereka butuhkan dengan lebih efisien.</li></ol></td></tr></tbody></table>

1. **Fungsional & Spesifikasi**

**Process Flows**
![Process Flow Mobile App Wisata](assets/images/Flow.png)

**Spesifikasi**

1. Menggunakan Framework Flutter.
2. Penggunaan Pubspec Assets.
3. Penambahan pages

Pada bagian ini di gunakan untuk mendefinisikan kelas wisata yang berfungsi sebagai struktur data untuk setiap objek wisata, dan untuk selanjutnya di panggil dan di tampilan pada homepage.

1. Pemilihan data

Pada bagian ini digunakan untuk memilih data wisata dengan menggunakan class destinationpage pada yang akan di tampilkan pada bagian pages/destinationpage.
