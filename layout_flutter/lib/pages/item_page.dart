import 'package:flutter/material.dart';
import 'package:layout_flutter/widget/item_detail.dart';
import '../models/item.dart';


class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              item.imagePath,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            ItemDetail(item: item),
          ],
        ),
      ),
    );
  }
}
