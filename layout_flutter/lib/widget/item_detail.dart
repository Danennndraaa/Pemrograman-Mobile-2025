import 'package:flutter/material.dart';
import 'package:layout_flutter/widget/action_button.dart';
import '../models/item.dart';


class ItemDetail extends StatelessWidget {
  final Item item;
  const ItemDetail({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title + Bintang
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  item.title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.red),
                  const SizedBox(width: 4),
                  Text('${item.stars}'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(item.location, style: const TextStyle(color: Colors.grey, fontSize: 16)),

          // 🔹 Tombol aksi
          const ActionButtons(),

          const SizedBox(height: 16),
          Text(
            item.description,
            style: const TextStyle(fontSize: 16, height: 1.5),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
