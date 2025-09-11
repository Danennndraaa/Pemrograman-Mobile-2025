void main (){
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}

/*
Penjelasan baris per baris:

var list = [1, 2, 3];
→ Membuat sebuah list (array) berisi angka 1, 2, 3.

assert(list.length == 3);
→ Mengecek apakah panjang list adalah 3.
Benar, karena ada tiga elemen [1, 2, 3].

assert(list[1] == 2);
→ Mengecek apakah elemen indeks ke-1 bernilai 2.
Benar, karena list[1] adalah angka 2 (ingat indeks di Dart dimulai dari 0).

print(list.length);
→ Akan mencetak 3.

print(list[1]);
→ Akan mencetak 2.

list[1] = 1;
→ Mengubah elemen indeks ke-1 dari 2 menjadi 1.
Sekarang list menjadi [1, 1, 3].

assert(list[1] == 1);
→ Mengecek apakah indeks ke-1 sekarang bernilai 1.
Benar, karena tadi sudah diubah.

print(list[1]);
→ Akan mencetak 1.
Hasil saat dijalankan

Output di console:

3
2
1

Kesimpulan

Program berjalan tanpa error, karena semua assert bernilai true.

Kode ini menunjukkan bahwa list di Dart bersifat mutable (bisa diubah isinya).

assert digunakan untuk memvalidasi kondisi selama runtime (biasanya aktif di mode debug, bisa diabaikan di release mode).
*/