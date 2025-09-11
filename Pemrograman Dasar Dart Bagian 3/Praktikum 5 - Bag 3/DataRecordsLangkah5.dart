void main() {
  // Record dengan kombinasi positional dan named fields
  var mahasiswa2 = ('Danendra Adhipramana', a: 244107023011, b: true, 'last');

  // Akses field di dalam record
  print(mahasiswa2.$1); // Prints 'Danendra Adhipramana' (positional field pertama)
  print(mahasiswa2.a);  // Prints 244107023011 (named field a)
  print(mahasiswa2.b);  // Prints true (named field b)
  print(mahasiswa2.$2); // Prints 'last' (positional field kedua)
}

/*
Penjelasan:

Record mahasiswa2 berisi campuran positional & named fields:

Positional 1 → "Danendra Adhipramana" (nama)

Named a → 244107023011 (NIM)

Named b → true (misalnya status aktif)

Positional 2 → 'last' (dummy value)

Keuntungan record → bisa menggabungkan positional & named field dalam 1 struktur sederhana.

Output program:
Danendra Adhipramana
244107023011
true
last
*/