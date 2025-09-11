/*
Kode awal:
var record = ('first', a: 2, b: true, 'last');
print(record)

Apa yang terjadi?

Error muncul di baris terakhir:

Error: Expected ';' after this.

Karena setelah print(record) tidak ada tanda titik koma (;).

Selain itu, secara konsep kode ini benar karena Dart (sejak versi 3) mendukung record type, yaitu struktur data ringan seperti tuple.

Elemen record bisa punya posisi (positional fields) → 'first', 'last'.

Bisa juga punya nama (named fields) → a: 2, b: true.

Perbaikan:
*/

void main() {
  // Membuat record dengan 2 positional fields dan 2 named fields
  var record = ('first', a: 2, b: true, 'last');

  // Print isi record
  print(record);
}


/*
Penjelasan:

('first', a: 2, b: true, 'last') adalah sebuah record dengan:

Positional fields → 'first' dan 'last'

Named fields → a: 2, b: true

Bisa diakses dengan:

print(record.$1);  // 'first'
print(record.a);   // 2
print(record.b);   // true
print(record.$2);  // 'last'

Output program:
(first, a: 2, b: true, last)
*/