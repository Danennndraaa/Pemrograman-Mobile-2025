void main() {
  // List dengan panjang 5, tiap elemen awalnya null, bertipe String? (nullable)
  final List<String?> list = List.filled(5, null);

  // Isi nama dan NIM
  list[1] = "Danendra Adhipramana"; // Nama
  list[2] = "244107023011";         // NIM

  // Print isi list
  print(list);
}


/*
Langkah 3:
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

final list = List.filled(5, null); // List panjang 5, semua elemen awalnya null

  // Isi nama dan NIM di index ke-1 dan ke-2
  list[1] = "Danendra Adhipramana"; // ganti dengan nama kamu
  list[2] = "244107023011";         // ganti dengan NIM kamu

  // Print semua isi list
  print(list);

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
Error,
Karena waktu kamu bikin list dengan:

final list = List.filled(5, null);


Secara default Dart menganggap list ini bertipe List<Null>, artinya semua elemennya hanya boleh null.
Makanya ketika kamu isi list[1] = "Danendra Adhipramana";, muncul error:

output:
A value of type 'String' can't be assigned to a variable of type 'Null'

Supaya list bisa menampung String dan null, kamu harus pakai tipe nullable string (String?):

void main() {
  // List dengan panjang 5, tiap elemen awalnya null, bertipe String? (nullable)
  final List<String?> list = List.filled(5, null);

  // Isi nama dan NIM
  list[1] = "Danendra Adhipramana"; // Nama
  list[2] = "244107023011";         // NIM

  // Print isi list
  print(list);
}

Kalau pakai List.filled(5, null); tanpa tipe, Dart menganggap List<Null>.

Untuk bisa isi String, harus ditulis List<String?>.
*/