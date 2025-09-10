void main(){
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break; // keluar dari loop saat index = 21
    } else if (index > 1 || index < 7) {
      continue; // lompat ke iterasi berikutnya
    }
    print(index);
  }
}

/*
Langkah 3:
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan breakcontinue.
akan muncul error karena:
1. Penulisan keyword Dart harus huruf kecil → if, else if, bukan If, Else If.
2. Variabel Index berbeda dengan index (Dart case-sensitive).
3. Letak print(index); di bawah continue; tidak akan pernah jalan (karena continue langsung
lompat ke iterasi berikutnya).
Perbaikan:
for (int index = 10; index < 27; index++) {
 if (index == 21) {
 break; // keluar dari loop saat index = 21
 } else if (index > 1 || index < 7) {
 continue; // lompat ke iterasi berikutnya
 }
 print(index);
}
Penjelasan alur:
1. for mulai dari index = 10.
2. Cek kondisi:
o Jika index == 21 → perulangan berhenti (break).
o Jika index > 1 || index < 7 → kondisi ini selalu benar untuk semua index ≥ 10, jadi
continue akan selalu dijalankan, sehingga print(index); tidak pernah dipanggil.
Apa yang terjadi saat dijalankan?
• Program akan berhenti di index == 21, karena break.
• Tapi tidak ada angka yang tercetak, karena continue selalu aktif untuk semua nilai index ≥10.

*/