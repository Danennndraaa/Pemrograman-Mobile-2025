void main() {
  int counter = 0;

  while (counter < 33) {
    print(counter);
    counter++;
  }
}

/* Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
while (counter < 33) {
 print(counter);
 counter++;
}
Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.
• Akan muncul error:
• Penyebabnya: variabel counter belum pernah dideklarasikan sebelum dipakai dalam while.

Perbaikan:
deklarasikan variabel counter terlebih dahulu, biasanya dimulai dari 0.
int counter = 0;
while (counter < 33) {
 print(counter);
 counter++;
}
Penjelasan
1. counter dimulai dari 0.
2. Selama counter < 33 bernilai true, maka blok while akan dieksekusi.
3. Di dalam blok:
• print(counter); → menampilkan nilai counter.
• counter++; → menambah nilai counter satu per satu.
4. Saat counter mencapai 33, kondisi counter < 33 menjadi false, sehingga perulangan berhenti.
*/