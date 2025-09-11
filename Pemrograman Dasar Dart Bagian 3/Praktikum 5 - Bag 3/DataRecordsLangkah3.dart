// Fungsi tukar menerima record (int, int) lalu mengembalikan record yang ditukar urutannya
(int, int) tukar((int, int) record) {
  // Destrukturisasi record menjadi variabel a dan b
  var (a, b) = record;

  // Return record baru dengan posisi terbalik
  return (b, a);
}

void main() {
  // Membuat record berisi dua integer
  var pasangan = (10, 20);

  print("Record awal: $pasangan");

  // Memanggil fungsi tukar()
  var hasilTukar = tukar(pasangan);

  print("Record setelah ditukar: $hasilTukar");
}

/*
Kode ini valid di Dart 3 karena mendukung record types dan pattern matching.

(int, int) → record dengan 2 field bertipe integer.

var (a, b) = record; → destrukturisasi record ke variabel a dan b.

return (b, a); → mengembalikan record baru dengan urutan terbalik.

Tidak ada error sintaks, tapi kita perlu memanggil fungsi tukar() di dalam main() agar terlihat jelas hasilnya.

Penjelasan:

Record (10, 20) dimasukkan ke fungsi tukar().

Di dalam fungsi, record dipecah jadi a = 10, b = 20.

Lalu dikembalikan (b, a) → (20, 10).

Inilah kelebihan record di Dart: ringkas, mendukung pattern matching, dan bisa digunakan seperti tuple.

Output program:
Record awal: (10, 20)
Record setelah ditukar: (20, 10)
*/