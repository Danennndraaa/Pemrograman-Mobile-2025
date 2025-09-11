/*
Kode Awal:
list1 = [1, 2, null];
print(list1);
var list3 = [0, ...?list1];
print(list3.length);

Apa yang terjadi?

Error pertama:

Kalau langsung tulis list1 = [1, 2, null]; tanpa deklarasi, Dart akan muncul warning:

Error: Undefined name 'list1'


Karena list1 belum pernah dideklarasikan.

Spread operator dengan ...?:

...?list1 artinya kalau list1 bukan null → isi list1 akan disebarkan.

Kalau list1 = null → tidak ditambahkan apa-apa (tidak error).

list3 = [0, ...?list1];

Akan menghasilkan [0, 1, 2, null] (panjang = 4).

Perbaikan:
*/

void main() {
  // Deklarasi list1, bisa berisi null sebagai elemen
  var list1 = [1, 2, null];
  print("Isi list1: $list1");

  // Membuat list3 dengan spread operator null-aware (...?)
  var list3 = [0, ...?list1];
  print("Isi list3: $list3");
  print("Panjang list3: ${list3.length}");

  // Membuat list nim menggunakan spread operator
  var nimDigits = ['2', '4', '4', '1', '0', '7', '0', '2', '3', '0', '1', '1'];
  var nimList = [...nimDigits]; // spread semua digit NIM
  print("Isi nimList: $nimList");
  print("Panjang nimList: ${nimList.length}");
}

/*
Penjelasan:

var list1 = [1, 2, null];
→ List bisa punya elemen null.

var list3 = [0, ...?list1];
→ ...?list1 menyebarkan isi list1 ke list baru.
→ Hasilnya [0, 1, 2, null].

var nimDigits = ['2','4','4',...];
→ Menyimpan digit-digit NIM dalam list String.
→ var nimList = [...nimDigits]; menyebarkan isi ke list baru.
→ Output: [2, 4, 4, 1, 0, 7, 0, 2, 3, 0, 1, 1].

Output program:
Isi list1: [1, 2, null]
Isi list3: [0, 1, 2, null]
Panjang list3: 4
Isi nimList: [2, 4, 4, 1, 0, 7, 0, 2, 3, 0, 1, 1]
Panjang nimList: 12
*/