import 'package:flutter/material.dart';
import 'package:travelapp/Models/TouristPlacesModel.dart';

class Tourisplaces extends StatelessWidget {
  const Tourisplaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Chip(
            label: Text(touristPlaces[index].name),
            backgroundColor: Colors.white,
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlaces[index].image),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Padding(padding: EdgeInsets.only(right: 10));
        },
        itemCount: touristPlaces.length,
      ),
    );
  }
}
