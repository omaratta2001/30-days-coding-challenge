import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;

  const CustomIconButton({super.key, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.grey[300]!)),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        constraints: const BoxConstraints.tightFor(width: 40),
        color: Colors.black54,
        splashRadius: 22,
      ),
    );
  }
}
