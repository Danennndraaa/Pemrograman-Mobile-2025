/*
Kode awal:
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);

Apa yang terjadi?

Error muncul:

Error: Undefined name 'promoActive'

Karena variabel promoActive belum pernah dideklarasikan.\

Perbaikan:
*/

void main() {
  // Jika promoActive bernilai true
  var promoActive = true;
  var nav1 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print("promoActive = true  -> $nav1");

  // Jika promoActive bernilai false
  promoActive = false;
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print("promoActive = false -> $nav2");
}

/*
Penjelasan:

if (promoActive) 'Outlet' → hanya akan menambahkan 'Outlet' ke dalam list jika kondisi true.

Jadi hasil nav akan berbeda tergantung nilai promoActive.

Output program:
promoActive = true  -> [Home, Furniture, Plants, Outlet]
promoActive = false -> [Home, Furniture, Plants]
*/