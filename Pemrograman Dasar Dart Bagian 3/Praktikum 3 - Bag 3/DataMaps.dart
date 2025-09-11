void main() {
  // Map di Dart menggunakan pasangan key:value
  // gifts: key berupa String, value bisa campuran (String / int)
  var gifts = {
    // Key     :   Value
    'first'  : 'partridge',
    'second' : 'turtledoves',
    'fifth'  : 1              // Value di sini int, bukan String
  };

  // nobleGases: key berupa int, value bisa campuran (String / int)
  var nobleGases = {
    2  : 'helium',
    10 : 'neon',
    18 : 2                     // Value di sini int
  };

  // Print isi Map
  print(gifts);
  print(nobleGases);
}

/*
Penjelasan:

Deklarasi Map

var gifts = {...};
→ Membuat Map dengan key = String ('first', 'second', 'fifth')
→ Value bisa tipe campuran (String dan int).

var nobleGases = {...};
→ Membuat Map dengan key = int (2, 10, 18).
→ Value juga campuran (String dan int).

Print

print(gifts); akan menampilkan:

{first: partridge, second: turtledoves, fifth: 1}


print(nobleGases); akan menampilkan:

{2: helium, 10: neon, 18: 2}


Error?

Kode ini tidak error, karena di Dart Map boleh punya value campuran tipe data.

Kalau ingin lebih rapi, bisa didefinisikan tipe generiknya.

Contoh Map<String, dynamic> untuk gifts.

Contoh Map<int, dynamic> untuk nobleGases.
*/