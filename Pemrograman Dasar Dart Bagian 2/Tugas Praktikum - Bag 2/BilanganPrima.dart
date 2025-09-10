import 'dart:io';

void main() {
  String nama = "Danendra Adhipramana";
  String nim = "244107023011";

  print("Bilangan Prima dari 0 sampai 201:");
  print("=================================");

  List<int> prima = [];
  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      prima.add(i);
    }
  }

  for (int i = 0; i < prima.length; i++) {
    String bil = prima[i].toString().padLeft(3);
    stdout.write("$bil  "); // cetak tanpa newline

    if ((i + 1) % 5 == 0) {
      print(""); // pindah baris tiap 5 angka
    }
  }

  print("\n=================================");
  print("Nama : $nama");
  print("NIM  : $nim");
}

bool isPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

/*
Penjelasan:
Kode 1:
List<int> prima = [];
for (int i = 0; i <= 201; i++) {
 if (isPrima(i)) {
 prima.add(i);
 }
}
• Membuat list kosong prima.
• Melakukan loop dari 0 sampai 201.
• Setiap angka dicek dengan fungsi isPrima(i).
• Jika benar bilangan prima, angka dimasukkan ke dalam list prima.
Kode 2:
for (int i = 0; i < prima.length; i++) {
 String bil = prima[i].toString().padLeft(3);
 stdout.write("$bil "); // cetak tanpa newline
 if ((i + 1) % 5 == 0) {
 print(""); // pindah baris tiap 5 angka
 }
}
• Loop untuk mencetak semua bilangan prima dari list.
• toString().padLeft(3) membuat setiap angka memiliki lebar minimal 3 karakter, sehingga hasil
cetak lebih sejajar.
• stdout.write mencetak angka tanpa pindah baris.
• if ((i + 1) % 5 == 0) memberi aturan bahwa setiap 5 angka, pindah baris agar tampil seperti
tabel.
Kode 3:
bool isPrima(int n) {
 if (n < 2) return false;
 for (int i = 2; i * i <= n; i++) {
 if (n % i == 0) return false;
 }
 return true;
• Fungsi isPrima digunakan untuk menentukan apakah suatu bilangan n prima atau bukan.
• Jika n < 2, otomatis bukan prima.
• Mengecek pembagi dari 2 hingga akar kuadrat n.
• Jika ada angka yang bisa membagi habis n, maka false (bukan prima).
• Jika tidak ada pembagi, true → bilangan prima.

*/