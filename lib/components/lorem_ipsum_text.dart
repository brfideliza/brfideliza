import 'package:flutter/material.dart';

class LoremIpsumText extends StatelessWidget {
  const LoremIpsumText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vehicula sapien eget viverra tincidunt. Aliquam et magna a odio facilisis tincidunt. Phasellus vitae consequat odio. Donec non volutpat tellus."),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vehicula sapien eget viverra tincidunt. Aliquam et magna a odio facilisis tincidunt. Phasellus vitae consequat odio. Donec non volutpat tellus."),
          ),
        ],
      ),
    );
  }
}
