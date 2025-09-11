void main() {
  // List bilangan integer
  var listOfInts = [1, 2, 3];

  // Membuat listOfStrings menggunakan Collection For
  var listOfStrings = [
    '#0',                        // Elemen awal
    for (var i in listOfInts) '#$i' // Tambahkan elemen hasil perulangan
  ];

  // Mengecek bahwa elemen ke-1 adalah '#1'
  assert(listOfStrings[1] == '#1');

  // Cetak isi list
  print("Isi listOfStrings: $listOfStrings");
}

/*
Kode ini tidak error karena sintaks Collection for memang valid di Dart.

Proses:

listOfInts = [1, 2, 3]

listOfStrings dimulai dengan elemen '#0'

Lalu dengan for (var i in listOfInts) '#$i', akan menambahkan '#1', '#2', '#3'.

Jadi hasil akhirnya:

['#0', '#1', '#2', '#3']


assert(listOfStrings[1] == '#1'); benar, karena indeks ke-1 memang '#1'.

Output program:
Isi listOfStrings: [#0, #1, #2, #3]

Manfaat Collection For:

Memungkinkan membuat list secara dinamis dengan perulangan langsung di dalam literal list.

Lebih ringkas dibandingkan harus membuat list kosong lalu add() satu per satu.

Contoh:

var squares = [for (var i in [1, 2, 3, 4]) i * i];
print(squares); // [1, 4, 9, 16]


Jadi, Collection For = cara singkat untuk mengisi list dari hasil perulangan.
*/