void main() {
  int counter = 33;  // lanjut dari Praktikum sebelumnya, setelah while berhenti di 33

  do {
    print(counter);
    counter++;
  } while (counter < 77);
}

/*
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
do {
 print(counter);
 counter++;
} while (counter < 77);
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.
akan muncul error:
karena variabel counter belum didefinisikan.
Perbaikan:
int counter = 33; // lanjut dari Praktikum sebelumnya, setelah while
berhenti di 33
do {
 print(counter);
 counter++;
} while (counter < 77);
Penjelasan:
• do { ... } while (...); selalu menjalankan blok minimal sekali, baru mengecek kondisi
setelahnya.
• Pada kode di atas:
o counter mulai dari 33.
o Akan mencetak angka dari 33 hingga 76.
o Saat counter sudah 77, kondisi counter < 77 → false, perulangan berhenti.
*/