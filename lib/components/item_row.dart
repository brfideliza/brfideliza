import 'package:flutter/material.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({
    super.key,
    required this.icon1,
    required this.label1,
    required this.icon2,
    required this.label2,
  });

  final IconData icon1;
  final IconData icon2;
  final String label1;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Item(
            icon: icon1,
            label: label1,
          ),
        ),
        Expanded(
          child: Item(
            icon: icon2,
            label: label2,
          ),
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(icon),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(label),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
