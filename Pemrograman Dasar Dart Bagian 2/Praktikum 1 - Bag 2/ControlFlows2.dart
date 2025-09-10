void main() {
  String test = "true";

  if (test == "true") {
    print("Kebenaran");
  } else {
    print("Bukan kebenaran");
  }
}

/*Akan muncul error:
Penyebabnya: pada Dart, kondisi di dalam if wajib berupa tipe bool (true/false), sedangkan test
adalah String, bukan bool.
Perbaikan tetap menggunakan if/else:
String test = "true";
if (test == "true") {
 print("Kebenaran");
} else {
 print("Bukan kebenaran");
}
Hasil Run:
Karena test berisi "true", maka kondisi if (test == "true") bernilai true, sehingga output: Kebenaran
*/