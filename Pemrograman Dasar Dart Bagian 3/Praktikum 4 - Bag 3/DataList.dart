/*
Kode Awal:
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list1);
  print(list2);
  print(list2.length);
}
Apa yang terjadi?
Error terjadi di baris ini:

print(list1);
Karena tidak ada variabel bernama list1. Yang ada hanyalah list dan list2.

Selain itu, kode var list2 = [0, ...list]; benar dan tidak error.

...list artinya menyebarkan isi list [1, 2, 3] ke dalam list baru.

Jadi list2 = [0, 1, 2, 3].

Perbaikan:
*/

void main() {
  // List pertama
  var list = [1, 2, 3];

  // List kedua: membuat list baru dengan menambahkan angka 0 di depan
  // lalu menyebarkan isi 'list' ke dalamnya
  var list2 = [0, ...list];

  // Cetak isi list
  print(list);       // Output: [1, 2, 3]
  print(list2);      // Output: [0, 1, 2, 3]

  // Cetak panjang list2
  print(list2.length); // Output: 4
}

/*
Penjelasan:

var list = [1, 2, 3];
Membuat list dengan elemen [1, 2, 3].

var list2 = [0, ...list];
Membuat list baru [0] lalu menambahkan semua isi dari list.
Hasilnya [0, 1, 2, 3].

print(list);
Menampilkan isi list pertama:

[1, 2, 3]


print(list2);
Menampilkan isi list kedua:

[0, 1, 2, 3]


print(list2.length);
Menampilkan panjang list2 → 4
*/