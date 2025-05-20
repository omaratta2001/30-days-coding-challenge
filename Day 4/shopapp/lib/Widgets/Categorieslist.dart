import 'package:flutter/material.dart';
import 'package:shopapp/Models/Category.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(categories[index].Image),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                categories[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
