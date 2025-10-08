import 'package:flutter/material.dart';
import 'package:layout_flutter/widget/item_card.dart';
import '../models/item.dart';
import 'item_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGridView = false;

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
        actions: [
          IconButton(
            icon: Icon(isGridView ? Icons.list : Icons.grid_view),
            tooltip: isGridView ? 'Tampilan List' : 'Tampilan Grid',
            onPressed: () {
              setState(() {
                isGridView = !isGridView;
              });
            },
          ),
        ],
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: isGridView
            ? GridView.builder(
          key: const ValueKey('grid'),
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.85,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item,
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: item.title,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          item.imagePath,
                          height: 100,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            item.location,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.red, size: 16),
                              const SizedBox(width: 4),
                              Text('${item.stars}',
                                  style: const TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        )
            : ListView.builder(
          key: const ValueKey('list'),
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
