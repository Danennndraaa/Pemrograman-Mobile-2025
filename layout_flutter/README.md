# layout_flutter

A new Flutter project.

## Documentations
`Layout Flutter`: Danendra Adhipramana - 244107023011

## Praktikum 1: Membangun Layout di Flutter

### Membuat Project Baru
saya membuat sebuah project flutter baru dengan nama `layout_flutter`.
![Documentations Layout_Flutter](Docs/01.png)

### Buka file `lib/main.dart`
saya membuka file main.dart lalu mengganti dengan nama dan NIM Anda di text title dan memunculkan hello world.
![Documentations Layout_Flutter](Docs/02.png)

### Implementasi title row
saya membangun layout di flutter dengan mengimplementasikan title row dengan hasil berikut.
![Documentations Layout_Flutter](Docs/03.png)

## Praktikum 2: Implementasi button row
saya membangun button di flutter dengan membuat method column buildbutton dan membuat widgetbutton dengan hasil berikut.
![Documentations Layout_Flutter](Docs/04.png)

## Praktikum 3: Implementasi text section
saya membuat text di flutter dengan membuat widget textSection dengan hasil berikut.
![Documentations Layout_Flutter](Docs/05.png)

## Praktikum 4: Implementasi image section
saya memgimplementasikan image di flutter dengan menyisipkan aset gambar dan menambahkan gambar ke body dengan hasil berikut.
![Documentations Layout_Flutter](Docs/06.png)

## Praktikum 5: Membangun Navigasi di Flutter

> [!WARNING]
> Disini saya **tidak** membuat project baru bernama "belanja", tetapi saya akan melanjutkan project yang sebelumnya telah dibuat, yaitu project "layout_flutter".

saya membuat Homepage dengan tampilan listview dan berikut hasilnya
![Documentations Layout_Flutter](Docs/07.png)

ketika di klik akan memunculkan halaman Detail Card, dan dapat kembali ke homepage dengan menekan tombol back. Berikut Hasilnya
![Documentations Layout_Flutter](Docs/08.png)

## Tugas Praktikum 2: Navigator
Saya mengirim Data dengan Arguments
Di dalam `item_card.dart`, saya mengubah aksi onTap agar mengirim data ke halaman detail:
![Documentations Layout_Flutter](Docs/09.png)

## Tugas Praktikum 2: Modal Route
kemudian setelah mengirim data akan Terima Data di ItemPage
Di dalam `item_page.dart`, dengan mengambil argumen dengan ModalRoute:
![Documentations Layout_Flutter](Docs/11.png)

## Tugas Praktikum 2: GridView <> ListView
tampilan awal project ini adalah ListView
![Documentations Layout_Flutter](Docs/13.png)

kemudian saya membuat GridView dan menambahkan tombol agar dapat berubah dari listview ke gridview begitu sebaliknya, berikut hasilnya.
![Documentations Layout_Flutter](Docs/14.png)

## Tugas Praktikum 2: Hero Widget
Saya menambahkan Hero Animation
Untuk membuat transisi halus dari gambar di HomePage ke gambar di ItemPage, dengan cara tambahkan Hero widget Di `item_card.dart,
![Documentations Layout_Flutter](Docs/12.png)

## Tugas Praktikum 2: Footer
saya menambahkan Footer Identitas
Di bawah ListView/GridView dengan nama dan NIM
![Documentations Layout_Flutter](Docs/10.png)