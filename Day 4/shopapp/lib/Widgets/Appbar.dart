import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shopapp/constants.dart';

class Appbar_widget extends StatelessWidget {
  const Appbar_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.grid_outline),
          iconSize: 30,
          style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: const EdgeInsets.all(15)),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.notifications_outline),
          iconSize: 30,
          style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: const EdgeInsets.all(15)),
        )
      ],
    );
  }
}
