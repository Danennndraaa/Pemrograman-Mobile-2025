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
