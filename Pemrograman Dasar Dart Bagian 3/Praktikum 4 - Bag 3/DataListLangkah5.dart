/*
Kode awal:
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);

Apa yang terjadi?

Error langsung muncul:

Error: Undefined name 'login'


Karena variabel login belum didefinisikan.

Selain itu, sintaks if (login case 'Manager') tidak valid di Dart versi stabil.

Yang valid adalah pakai perbandingan biasa:

if (login == 'Manager')

Perbaikan:
*/

void main() {
  // Contoh ketika login sebagai Manager
  var login = 'Manager';
  var nav1 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print("login = Manager -> $nav1");

  // Contoh ketika login sebagai Staff
  login = 'Staff';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print("login = Staff   -> $nav2");

  // Contoh ketika login kosong (belum login)
  login = '';
  var nav3 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print("login = ''      -> $nav3");
}


/*
Penjelasan:

if (login == 'Manager') 'Inventory'
→ 'Inventory' hanya dimasukkan ke list kalau variabel login bernilai "Manager".

Jadi nav akan berubah sesuai isi variabel login.

Output program:
login = Manager -> [Home, Furniture, Plants, Inventory]
login = Staff   -> [Home, Furniture, Plants]
login = ''      -> [Home, Furniture, Plants]
*/