# Analisis Data Cross-Sell Asuransi Kendaraan
![Tampilan Dashboard](dashboard_page-0001.jpg)

## Gambaran Umum Proyek
Proyek ini berfokus pada analisis data pelanggan untuk mengidentifikasi prospek terbaik dalam kampanye *cross-selling* (penjualan silang). Tujuan utamanya adalah untuk membantu perusahaan asuransi menentukan pemegang polis asuransi kesehatan mana yang kemungkinan besar tertarik untuk membeli asuransi kendaraan.

Dengan membangun *dashboard* interaktif di **Power BI**, proyek ini mengubah data mentah demografi pelanggan, riwayat kendaraan, dan data keterlibatan polis menjadi wawasan bisnis yang dapat ditindaklanjuti. *Dashboard* ini dirancang untuk membantu tim pemasaran agar dapat mengoptimalkan anggaran iklan mereka, menargetkan audiens yang tepat, dan meningkatkan tingkat konversi secara signifikan.

## Sumber Dataset
Dataset yang digunakan untuk *dashboard* ini bersumber dari **Kaggle**: [Health Insurance Cross Sell Prediction](https://www.kaggle.com/datasets/anmolkumar/health-insurance-cross-sell-prediction).

*Catatan: Ini adalah dataset sintetis yang tersedia untuk publik dan banyak digunakan untuk praktik analisis data. Dataset ini dipilih untuk proyek portofolio ini untuk mendemonstrasikan keterampilan praktis dalam analisis data menggunakan SQL dan Power BI.*

## Struktur Repositori
*   `1. Create insurance_cross_sell Database.sql` : Query SQL untuk pembuatan *database* dan pemisahan tabel.
*   `insurance_sales.csv` : Dataset mentah awal yang digunakan untuk analisis.
*   `dashboard.pbix` : File sumber Power BI interaktif (dapat diunduh dan dibuka di Power BI Desktop).
*   `dashboard_page-0001.jpg` : *Preview* hasil akhir *dashboard*.
*   `README.md` : Dokumentasi utama yang menjelaskan gambaran proyek, alur kerja, dan wawasan bisnis.

## Catatan Proses dan Alur Kerja

Proyek ini dieksekusi melalui *pipeline* analisis data yang sederhana dengan mendemonstrasikan alur kerja, mulai dari ekstraksi data hingga visualisasi:

### 1. Akuisisi & Pembersihan Data (Microsoft Excel)
*   Memperoleh dataset *dummy* mentah dari Kaggle.
*   Melakukan *profiling* data awal dan pembersihan awal di Excel untuk memastikan integritas data sebelum mengimpornya ke dalam *database*.

### 2. Pembuatan Database & Normalisasi (SQL)
*   Mengimpor dataset yang telah dibersihkan ke dalam lingkungan *database* SQL.
*   Menerapkan konsep normalisasi *database* dengan membagi dataset tunggal menjadi **3 tabel relasional** (Demografi Pelanggan, Riwayat Kendaraan, dan Data Polis/Penjualan). Langkah ini sangat penting untuk mengoptimalkan penyimpanan data dan mempelajari pemodelan **Star Schema** untuk analisis data.

### 3. Pengembangan Dashboard (Power BI)
*   Menghubungkan Power BI secara langsung ke *database* SQL untuk memuat tabel relasional.
*   Belajar merancang *dashboard* sederhana yang berfokus pada *data storytelling*, estetika yang bersih, dan tata letak yang presisi.
*   **Membangun komponen visual berikut:**
    *   **3 Kartu KPI:** Menyoroti *Total Pelanggan*, *Total Premi Tahunan*, dan *Tingkat Konversi* secara keseluruhan menggunakan visual 'New Card'.
    *   **4 Grafik Analitik:** 
        *   Tingkat Konversi Berdasarkan Kelompok Usia (Grafik Kolom)
        *   Tingkat Konversi vs. Riwayat Kerusakan Kendaraan (Grafik Donat)
        *   Top 5 Saluran Penjualan Berdasarkan Premi (Grafik Batang Horizontal yang Difilter)
        *   Tingkat Konversi vs. Status Asuransi (Grafik Kolom dengan Sumbu X Kategorikal)
    *   **Slicer Interaktif:** Mengimplementasikan *slicer* bergaya 'Tile' untuk filter *Gender* (Pria/Wanita) yang memungkinkan proses *cross-filtering*.
    *   **Panel Key Insights:** Mengintegrasikan bagian teks khusus untuk menyoroti rekomendasi bisnis yang dapat ditindaklanjuti oleh para pemangku kepentingan.

### 4. Penyelesaian Produk Akhir
*   Menyempurnakan tata letak *dashboard*, menerapkan palet warna yang konsisten, dan menghapus label teknis bawaan (*default*) yang tidak diperlukan.
*   Mengekspor tampilan *dashboard* interaktif akhir ke dalam format `.jpg` beresolusi tinggi, yang ditampilkan di atas.

## Wawasan Bisnis Utama

Berdasarkan analisis *dashboard* interaktif, berikut adalah wawasan yang dapat ditindaklanjuti oleh tim pemasaran dan penjualan:

1. Tingkat konversi *cross-sell* tertinggi ditemukan pada kelompok usia matang, secara spesifik **36-45 tahun (21,54%)**. Sebaliknya, demografi yang lebih muda (18-25 tahun) menunjukkan tingkat konversi yang sangat minim (3,53%). **Kampanye pemasaran harus ditargetkan secara intensif pada rentang usia 36-45 tahun**.
2. Pelanggan dengan riwayat **kerusakan kendaraan** memiliki tingkat respons/konversi yang jauh lebih tinggi (**23,77%**) dibandingkan mereka yang tidak memiliki riwayat kerusakan (0,52%). Hal ini menjadi indikator perilaku terkuat untuk keberhasilan *cross-selling*.
3. **Saluran Penjualan 152** adalah pendorong pendapatan utama, menghasilkan lebih dari **₹4 Miliar** dalam total premi. Sumber daya harus diprioritaskan untuk mengoptimalkan saluran spesifik ini.
4. Minimalkan upaya pemasaran yang ditujukan kepada pelanggan yang sudah memiliki asuransi kendaraan, karena tingkat konversi mereka hampir tidak ada (**0,09%**). 

## Kesimpulan Strategis
Untuk memaksimalkan *Return of Investment* (ROI), anggaran iklan dan penjangkauan harus difokuskan secara ketat pada **pelanggan yang belum berasuransi namun memiliki riwayat kerusakan kendaraan, khususnya dalam rentang usia 36-45 tahun, dan secara dominan memanfaatkan Saluran Penjualan 152**.
