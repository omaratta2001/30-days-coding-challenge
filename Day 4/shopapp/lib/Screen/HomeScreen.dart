import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shopapp/Models/Category.dart';
import 'package:shopapp/Models/Product.dart';
import 'package:shopapp/Widgets/Appbar.dart';
import 'package:shopapp/Widgets/Categorieslist.dart';
import 'package:shopapp/Widgets/Currsellslider.dart';
import 'package:shopapp/Widgets/Product_card.dart';
import 'package:shopapp/Widgets/Searchfield.dart';
import 'package:shopapp/constants.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentcursor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Appbar_widget(),
                const SizedBox(
                  height: 20,
                ),
                const SearchField(),
                const SizedBox(
                  height: 20,
                ),
                HomeSlider(
                    onChange: (val) {
                      setState(() {
                        currentcursor = val;
                      });
                    },
                    currentCursor: currentcursor),
                const SizedBox(
                  height: 20,
                ),
                const Categories(),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Special For You",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: const Text("See All"))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(prodcut: products[index]);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
