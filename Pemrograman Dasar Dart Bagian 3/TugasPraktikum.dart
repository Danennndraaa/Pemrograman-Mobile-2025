// ===================================================
// 1. Functions dalam Dart
// ===================================================

// Functions adalah blok kode yang digunakan untuk menjalankan tugas tertentu.
// Membantu mengelompokkan logika agar kode lebih rapi, reusable, dan mudah dipelihara.

void sayHello() {
  print("Hello, Dart!");
}

// ===================================================
// 2. Jenis-jenis parameter di Functions
// ===================================================

void greet(String name, int age) {
  // Positional parameters (wajib, urutannya harus sesuai)
  print("Hello $name, umur kamu $age tahun.");
}

void greetOptional(String name, [int? age]) {
  // Optional positional parameters (ditandai dengan [])
  print("Hello $name, umur: ${age ?? 'tidak diketahui'}");
}

void greetNamed({required String name, int age = 18}) {
  // Named parameters (ditandai dengan {}), bisa diberi nilai default
  print("Hello $name, umur kamu $age tahun.");
}

// ===================================================
// 3. Functions sebagai first-class objects
// ===================================================

// Di Dart, function adalah first-class objects:
// - Bisa disimpan di variabel
// - Bisa dikirim sebagai parameter
// - Bisa dikembalikan dari function lain

void sayHi(String name) => print("Hi, $name");

void execute(Function f) {
  f("Adhipramana");
}

// ===================================================
// 4. Anonymous Functions
// ===================================================

// Anonymous function = function tanpa nama.
// Biasanya digunakan sekali pakai atau sebagai argumen function.

void anonymousExample() {
  // Anonymous function disimpan di variabel
  var add = (int a, int b) {
    return a + b;
  };
  print(add(3, 4)); // Output: 7

  // Anonymous function langsung dipakai di forEach
  var list = [1, 2, 3];
  list.forEach((item) {
    print("Angka: $item");
  });
}

// ===================================================
// 5. Lexical scope vs Lexical closures
// ===================================================

// Lexical Scope: variabel hanya bisa diakses dalam lingkup (scope) di mana ia didefinisikan
void lexicalScopeExample() {
  var name = "Danendra";

  void sayName() {
    // Bisa akses variabel dari scope luar
    print(name);
  }

  sayName(); // Output: Danendra
}

// Lexical Closures: function bisa "menyimpan" variabel dari scope asalnya
Function makeCounter() {
  var count = 0;

  return () {
    count++;
    return count;
  };
}

// ===================================================
// 6. Return multiple values
// ===================================================

// a) Dengan Record (sejak Dart 3)
(String, int) getMahasiswa() {
  return ("Danendra Adhipramana", 244107023011);
}

// b) Dengan Map
Map<String, dynamic> getData() {
  return {"nama": "Danendra", "nim": 244107023011};
}

// ===================================================
// MAIN PROGRAM UNTUK DEMO SEMUA BAGIAN
// ===================================================
void main() {
  // 1. Functions
  sayHello();

  // 2. Parameters
  greet("Danendra", 21);
  greetOptional("Danendra");
  greetOptional("Adhi", 21);
  greetNamed(name: "Danendra");
  greetNamed(name: "Adhi", age: 22);

  // 3. First-class function
  var greetFn = sayHi;
  greetFn("Danendra");
  execute(sayHi);

  // 4. Anonymous function
  anonymousExample();

  // 5. Lexical scope
  lexicalScopeExample();

  // 5. Lexical closure
  var counter = makeCounter();
  print(counter()); // 1
  print(counter()); // 2
  print(counter()); // 3

  // 6a. Return multiple values (Record)
  var (nama, nim) = getMahasiswa();
  print("Nama: $nama, NIM: $nim");

  // 6b. Return multiple values (Map)
  var data = getData();
  print("Nama: ${data['nama']}, NIM: ${data['nim']}");
}
