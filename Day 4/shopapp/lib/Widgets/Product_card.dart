import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shopapp/Models/Product.dart';
import 'package:shopapp/constants.dart';

class ProductCard extends StatelessWidget {
  final Product prodcut;

  const ProductCard({super.key, required this.prodcut});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              color: kcontentColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                prodcut.image,
                width: 120,
                height: 120,
              ),
              Text(
                prodcut.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "\$${prodcut.price}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: List.generate(
                        prodcut.colors.length,
                        (cindex) => Container(
                              height: 15,
                              width: 15,
                              margin: const EdgeInsets.only(right: 3),
                              decoration: BoxDecoration(
                                  color: prodcut.colors[cindex],
                                  shape: BoxShape.circle),
                            )),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10))),
            child: Icon(
              Ionicons.heart_outline,
              color: Colors.white,
              size: 18,
            ),
          ),
        ))
      ],
    );
  }
}
