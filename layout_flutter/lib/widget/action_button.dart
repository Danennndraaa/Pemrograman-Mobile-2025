import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final Color color;

  const ActionButtons({
    super.key,
    this.color = Colors.blue, // warna default
  });

  // helper: membangun satu tombol (ikon + label)
  Column _buildButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton(Icons.call, 'CALL'),
          _buildButton(Icons.near_me, 'ROUTE'),
          _buildButton(Icons.share, 'SHARE'),
        ],
      ),
    );
  }
}
