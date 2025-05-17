import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> images = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png"
  ];
  late final PageController _controller;
  @override
  void initState() {
    super.initState();
    // Start on the first real item (index 0)
    _controller = PageController(initialPage: 0);
  }

  void _onPageChanged(int index) {
    if (index == images.length) {
      // Reached the fake end, jump to start
      Future.delayed(Duration(milliseconds: 100), () {
        _controller.jumpToPage(0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 65,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Icon(
              Icons.sort,
              color: Colors.grey,
              size: 40,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 55,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Icon(
                Icons.notifications,
                color: Colors.grey,
                size: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Gap(20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13), color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            Gap(20),
            Container(
              height: 180,
              child: PageView.builder(
                itemCount: images.length,
                controller: _controller,
                onPageChanged: _onPageChanged,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  bottom: 20,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        color: Color(0xff47526d),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                                Image.asset(images[index]),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nike Shoe",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Men's Shoe",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  Gap(40),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$50",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Gap(90),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Color(0xff47526d),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Gap(30),
            Expanded(
              child: SingleChildScrollView(
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 10),
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 1.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset("assets/1.png",
                                width: 150, height: 150, fit: BoxFit.cover),
                          ),
                          Text(
                            "Nike Shoe",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "New Nike Shoe For Men",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$55",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xff47526d),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 1.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset("assets/2.png",
                                width: 150, height: 150, fit: BoxFit.cover),
                          ),
                          Text(
                            "Nike Shoe",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "New Nike Shoe For Men",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$55",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xff47526d),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 1.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset("assets/3.png",
                                width: 150, height: 150, fit: BoxFit.cover),
                          ),
                          Text(
                            "Nike Shoe",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "New Nike Shoe For Men",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$55",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xff47526d),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 1.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/4.png",
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Nike Shoe",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "New Nike Shoe For Men",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$55",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xff47526d),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
