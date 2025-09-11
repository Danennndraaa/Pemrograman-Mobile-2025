/*
Kode awal:
// Record type annotation in a variable declaration:
(String, int) mahasiswa;
print(mahasiswa);

Apa yang terjadi?

Jika kode ini langsung dijalankan → Error:

Error: The non-nullable local variable 'mahasiswa' must be assigned before it can be used.

Karena variabel mahasiswa bertipe non-nullable record belum diinisialisasi.

Solusinya → kita harus memberi nilai awal (initialization) sesuai tipe (String, int).

Perbaikan:
*/

void main() {
  // Deklarasi record dengan type annotation (String, int)
  // String = nama, int = NIM
  (String, int) mahasiswa = ("Danendra Adhipramana", 244107023011);

  // Cetak record mahasiswa
  print("Record mahasiswa: $mahasiswa");

  // Akses field dengan positional field
  print("Nama: ${mahasiswa.$1}");
  print("NIM : ${mahasiswa.$2}");
}

/*
Penjelasan:

(String, int) mahasiswa; → record dengan 2 positional fields:

$1 = field pertama (String → nama mahasiswa)

$2 = field kedua (int → NIM mahasiswa)

Harus diinisialisasi sebelum dipakai.

Record bisa diakses pakai field positional ($1, $2) atau field named jika didefinisikan dengan nama.

Output program:
Record mahasiswa: (Danendra Adhipramana, 244107023011)
Nama: Danendra Adhipramana
NIM : 244107023011
*/