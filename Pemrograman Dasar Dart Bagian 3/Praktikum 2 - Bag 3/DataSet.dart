void main (){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}

/*
Penjelasan:

Baris ini:

var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};


Kurung kurawal {} dengan elemen tanpa pasangan key-value → otomatis dianggap Set di Dart, bukan Map.

Jadi halogens adalah Set<String> yang berisi lima elemen unik.

Baris ini:

print(halogens);


Akan mencetak isi set.

Contoh hasil output:

{fluorine, chlorine, bromine, iodine, astatine}

Hasil saat dijalankan:

Program berjalan tanpa error.

Output menampilkan isi set, urutannya bisa berbeda-beda karena Set di Dart tidak menjamin urutan.

halogens adalah sebuah Set<String>.

Output menampilkan isi set {fluorine, chlorine, bromine, iodine, astatine} (urutan bisa berubah).
*/