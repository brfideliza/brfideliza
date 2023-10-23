import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 0.2,
          blurRadius: 4,
        ),
      ]),
      child: const CircleAvatar(
        backgroundColor: Colors.white,
        radius: 22,
        child: Icon(
          Icons.favorite,
          color: Colors.red,
          size: 26,
        ),
      ),
    );
  }
}
