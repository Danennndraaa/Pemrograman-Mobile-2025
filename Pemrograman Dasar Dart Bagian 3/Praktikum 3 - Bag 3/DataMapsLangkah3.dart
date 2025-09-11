void main() {
  // Map dengan key String dan value dinamis (bisa String / int)
  Map<String, dynamic> gifts = {
    'first'  : 'partridge',
    'second' : 'turtledoves',
    'fifth'  : 1
  };

  // Map dengan key int dan value dinamis (bisa String / int)
  Map<int, dynamic> nobleGases = {
    2  : 'helium',
    10 : 'neon',
    18 : 2
  };

  // Map kosong dengan key String dan value String
  var mhs1 = Map<String, String>();

  // Mengisi kembali gifts (sekarang semua value String)
  gifts['first']  = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth']  = 'golden rings';

  // Tambahkan nama & NIM ke gifts
  gifts['name'] = 'Danendra Adhipramana';
  gifts['nim']  = '244107023011';

  // Mengisi nobleGases dengan value bertipe String
  nobleGases[2]  = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Tambahkan nama & NIM ke nobleGases
  nobleGases[20] = 'Danendra Adhipramana';
  nobleGases[21] = '244107023011';

  // Mengisi mhs1 (karena Map<String, String>, semua value wajib String)
  mhs1['name'] = 'Danendra Adhipramana';
  mhs1['nim']  = '244107023011';

  // Map kosong dengan key int dan value String
  var mhs2 = Map<int, String>();

  // Mengisi mhs2
  mhs2[1] = 'Danendra Adhipramana';
  mhs2[2] = '244107023011';

  // Cetak hasil semua Map
  print("Isi gifts: $gifts");
  print("Isi nobleGases: $nobleGases");
  print("Isi mhs1: $mhs1");
  print("Isi mhs2: $mhs2");
}

/*
Penjelasan:

Map<String, dynamic> gifts

Key bertipe String, value bisa campuran (String/int).

Setelah diisi ulang → semua value sudah String (golden rings).

Ditambahkan juga name dan nim.

Map<int, dynamic> nobleGases

Key bertipe int, value bisa campuran.

Diisi ulang sehingga semuanya String (helium, neon, argon).

Ditambahkan name dan nim dengan key angka unik (20, 21).

Map<String, String> mhs1

Hanya bisa menampung pasangan String → String.

Diisi dengan name dan nim.

Map<int, String> mhs2

Hanya bisa menampung pasangan int → String.

Diisi dengan index 1 untuk name dan 2 untuk nim.

Output yang muncul:
Isi gifts: {first: partridge, second: turtledoves, fifth: golden rings, name: Danendra Adhipramana, nim: 244107023011}
Isi nobleGases: {2: helium, 10: neon, 18: argon, 20: Danendra Adhipramana, 21: 244107023011}
Isi mhs1: {name: Danendra Adhipramana, nim: 244107023011}
Isi mhs2: {1: Danendra Adhipramana, 2: 244107023011}
*/