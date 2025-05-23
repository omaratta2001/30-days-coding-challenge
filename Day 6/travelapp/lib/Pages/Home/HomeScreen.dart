import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travelapp/Widgets/Custom_icon_button.dart';
import 'package:travelapp/Widgets/Location_card.dart';
import 'package:travelapp/Widgets/TourisPlaces.dart';
import 'package:travelapp/Widgets/nearby_places.dart';
import 'package:travelapp/Widgets/recommed_places.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Good Morning"),
            Text(
              "Tetteh Jeron Asiedu",
              style: Theme.of(context).textTheme.labelMedium,
            )
          ],
        ),
        actions: [
          const CustomIconButton(
            icon: const Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 12),
            child: const CustomIconButton(
              icon: const Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        children: [
          const LocationCard(),
          SizedBox(
            height: 15,
          ),
          const Tourisplaces(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recomendation",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              TextButton(onPressed: () {}, child: const Text("View All"))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          RecommedPlaces(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby From You",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              TextButton(onPressed: () {}, child: const Text("View All"))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const NearbyPlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.bookmark_outline), label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket_outline), label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: "Profile")
          ]),
    );
  }
}
