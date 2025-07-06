# Proyek Smart Contract ToDoList dengan Solidity

Ini adalah proyek sederhana yang mengimplementasikan *smart contract* daftar tugas (To-Do List) di blockchain Ethereum. Kontrak ini ditulis dalam Solidity dan mengikuti praktik terbaik industri dalam hal keamanan, efisiensi gas, dan keterbacaan kode.

## Fitur Utama

- **Membuat Tugas Baru**: Menambahkan tugas baru ke dalam daftar.
- **Mengubah Status Tugas**: Menandai tugas sebagai selesai atau belum selesai (`toggleCompleted`).
- **Memperbarui Konten**: Mengedit teks dari tugas yang sudah ada.
- **Menghapus Tugas**: Menghapus tugas dari daftar secara efisien.
- **Melihat Tugas**: Mengambil detail satu tugas atau semua tugas yang aktif.
- **Kontrol Akses**: Hanya pemilik kontrak (`owner`) yang dapat memodifikasi daftar tugas.

## Teknologi yang Digunakan

- **Solidity**: `^0.8.20`
- **Hardhat**: Lingkungan pengembangan dan pengujian Ethereum.
- **Ethers.js**: Pustaka untuk berinteraksi dengan smart contract.
- **Chai & Mocha**: Kerangka kerja untuk pengujian (testing).

## Prasyarat

Pastikan Anda telah menginstal perangkat lunak berikut di sistem Anda:
- [Node.js](https://nodejs.org/) (versi 18.x atau lebih tinggi)
- npm atau yarn

## Instalasi dan Setup

1.  **Clone repository ini:**
    ```bash
    git clone [URL_REPOSITORY_ANDA]
    ```

2.  **Masuk ke direktori proyek:**
    ```bash
    cd [NAMA_FOLDER_PROYEK]
    ```

3.  **Install semua dependensi/pustaka yang dibutuhkan:**
    ```bash
    npm install
    ```

## Perintah Dasar (Hardhat)

Berikut adalah beberapa perintah yang sering digunakan dalam pengembangan proyek ini.

- **Kompilasi Smart Contract:**
  Perintah ini akan mengkompilasi file `.sol` Anda dan membuat file ABI di folder `artifacts`.
  ```bash
  npx hardhat compile
  ```

- **Menjalankan Pengujian (Testing):**
  Perintah ini akan menjalankan semua file tes yang ada di folder `test/`.
  ```bash
  npx hardhat test
  ```

- **Deploy ke Jaringan Lokal:**
  Untuk men-deploy kontrak ke jaringan lokal Hardhat, jalankan perintah berikut di terminal terpisah:
  ```bash
  npx hardhat node
  ```
  Kemudian, jalankan skrip deploy di terminal lain:
  ```bash
  npx hardhat run scripts/deploy.js --network localhost
  ```

## Struktur Kontrak

- `contracts/ToDoList.sol`: File utama yang berisi logika smart contract ToDoList.
- `test/ToDoList.test.js`: Berisi unit test untuk memastikan semua fungsi berjalan sesuai harapan.
- `scripts/deploy.js`: Skrip sederhana untuk men-deploy kontrak ke jaringan.
- `hardhat.config.js`: File konfigurasi untuk proyek Hardhat.

## Lisensi

Proyek ini dilisensikan di bawah Lisensi MIT. Lihat file `LICENSE` untuk detailnya.

---
**Penulis:** [NAMA ANDA]
