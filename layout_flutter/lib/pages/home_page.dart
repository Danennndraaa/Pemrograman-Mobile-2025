import 'package:flutter/material.dart';
import 'package:layout_flutter/widget/item_card.dart';
import '../models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      title: 'Wisata Gunung di Batu',
      location: 'Batu, Malang, Indonesia',
      imagePath: 'images/jtp.jpg',
      description:
      'Jawa Timur Park adalah tempat rekreasi dan taman belajar di Kota Batu. '
          'Objek wisata ini berada sekitar 20 km barat Kota Malang, dan menjadi salah satu ikon wisata Jawa Timur.',
      stars: 41,
    ),
    Item(
      title: 'Gunung Bromo',
      location: 'Lumajang, Jawa Timur',
      imagePath: 'images/bromo.jpg',
      description:
      'Gunung Bromo terkenal dengan pemandangan matahari terbitnya yang indah dan lautan pasir yang luas.',
      stars: 55,
    ),
    Item(
      title: 'Museum Angkut',
      location: 'Batu, Jawa Timur',
      imagePath: 'images/museum.jpg',
      description:
      'Museum Angkut menampilkan koleksi kendaraan klasik dari seluruh dunia dengan konsep edukatif dan hiburan.',
      stars: 38,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Jawa Timur'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ItemCard(
            item: item,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.blue.shade50,
        padding: const EdgeInsets.all(12),
        child: const Text(
          '© Danendra Adhipramana | 244107023011',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

