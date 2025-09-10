void main() {
  for (int index = 10; index < 27; index++) {
    print(index);
  }
}

/*
Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
for (Index = 10; index < 27; index) {
 print(Index);
}
Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.
Akan muncul error:
1. Index belum dideklarasikan (variabel tidak dikenali).
2. Penulisan huruf besar–kecil (Index vs index) tidak konsisten → Dart case sensitive.
3. Bagian for tidak menaikkan index dengan benar, karena ditulis index saja, seharusnya
index++.
Perbaikan:
void main() {
 for (int index = 10; index < 27; index++) {
 print(index);
 }
}
Penjelasan:
1. int index = 10; → deklarasi variabel index dengan nilai awal 10.
2. index < 27; → perulangan terus jalan selama kondisi ini true.
3. index++ → setiap iterasi, nilai index bertambah 1.
4. print(index); → mencetak nilai index di setiap langkah.
*/