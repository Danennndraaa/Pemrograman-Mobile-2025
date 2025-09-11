void main() {
  // Contoh Set dari langkah sebelumnya
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Membuat Set kosong bertipe String
  var names1 = <String>{};         // cara 1: var + type annotation
  Set<String> names2 = {};         // cara 2: langsung dengan tipe Set<String>
  var names3 = {};                 // <- ini bukan Set, tapi Map kosong (key-value)

  // Print isi awal (masih kosong)
  print(names1); // Output: {}
  print(names2); // Output: {}
  print(names3); // Output: {}

  // Tambah elemen ke names1 dengan .add()
  names1.add("Danendra Adhipramana"); // Nama
  names1.add("244107023011");         // NIM

  // Tambah elemen ke names2 dengan .addAll()
  names2.addAll({"Danendra Adhipramana", "244107023011"});

  // Cetak setelah ditambahkan
  print("Isi names1 setelah .add(): $names1");
  print("Isi names2 setelah .addAll(): $names2");

  // names3 dibiarkan kosong karena bertipe Map
}

/*
Penjelasan:

names1 = <String>{};
→ Membuat Set<String> kosong dengan cara eksplisit.

Set<String> names2 = {};
→ Cara lain untuk membuat Set kosong.

var names3 = {};
→ Secara default dianggap sebagai Map<dynamic, dynamic>, bukan Set.
→ Makanya kita tidak pakai dulu (nanti di praktikum berikutnya).

names1.add("...");
→ Menambahkan satu elemen ke Set.

names2.addAll({...});
→ Menambahkan beberapa elemen sekaligus ke Set.

Output program:
{fluorine, chlorine, bromine, iodine, astatine}
{}
{}
{}
Isi names1 setelah .add(): {Danendra Adhipramana, 244107023011}
Isi names2 setelah .addAll(): {Danendra Adhipramana, 244107023011}
*/