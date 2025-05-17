import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nikesop/Home/Shoes.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Text(
          "Shoes",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1000),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1100),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text(
                              "Sneakers",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1200),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text(
                              "Football",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1300),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text(
                              "Soccer",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1400),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text(
                              "Golf",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(20),
              FadeInUp(
                duration: Duration(milliseconds: 1500),
                child: Hero(
                    tag: 'red',
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Shoes(image: 'assets/one.jpg', tag: 'red');
                        }));
                      },
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/one.jpg"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 10,
                                offset: Offset(0, 10))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FadeInUp(
                                        child: Text(
                                          "Sneakers",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        duration: Duration(milliseconds: 1000),
                                      ),
                                      Gap(10),
                                      FadeInUp(
                                        child: Text(
                                          "Nike",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        duration: Duration(milliseconds: 1100),
                                      ),
                                    ],
                                  ),
                                ),
                                FadeIn(
                                    duration: Duration(milliseconds: 1200),
                                    child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                      ),
                                    ))
                              ],
                            ),
                            FadeInUp(
                                duration: Duration(milliseconds: 1200),
                                child: Text(
                                  "100\$",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                    )),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1600),
                child: Hero(
                    tag: 'blue',
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Shoes(image: 'assets/two.jpg', tag: 'blue');
                        }));
                      },
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/two.jpg"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 10,
                                offset: Offset(0, 10))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FadeInUp(
                                        child: Text(
                                          "Sneakers",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        duration: Duration(milliseconds: 1000),
                                      ),
                                      Gap(10),
                                      FadeInUp(
                                        child: Text(
                                          "Nike",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        duration: Duration(milliseconds: 1100),
                                      ),
                                    ],
                                  ),
                                ),
                                FadeIn(
                                    duration: Duration(milliseconds: 1200),
                                    child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                      ),
                                    ))
                              ],
                            ),
                            FadeInUp(
                                duration: Duration(milliseconds: 1200),
                                child: Text(
                                  "100\$",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                    )),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1700),
                child: Hero(
                    tag: 'white',
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Shoes(image: 'assets/three.jpg', tag: 'white');
                        }));
                      },
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/three.jpg"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 10,
                                offset: Offset(0, 10))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FadeInUp(
                                        child: Text(
                                          "Sneakers",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        duration: Duration(milliseconds: 1000),
                                      ),
                                      Gap(10),
                                      FadeInUp(
                                        child: Text(
                                          "Nike",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        duration: Duration(milliseconds: 1100),
                                      ),
                                    ],
                                  ),
                                ),
                                FadeIn(
                                    duration: Duration(milliseconds: 1200),
                                    child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                      ),
                                    ))
                              ],
                            ),
                            FadeInUp(
                                duration: Duration(milliseconds: 1200),
                                child: Text(
                                  "100\$",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
