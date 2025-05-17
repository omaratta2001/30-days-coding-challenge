import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modernsmarthome/smart_box.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List mysmartdevice = [
    ["Smart Light", "assets/icons/light-bulb.png", true],
    ["Smart AC", "assets/icons/air-conditioner.png", false],
    ["Smart TV", "assets/icons/smart-tv.png", false],
    ["Smart Fan", "assets/icons/fan.png", false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mysmartdevice[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/icons/menu.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                Icon(
                  Icons.person,
                  size: 50,
                )
              ],
            ),
            Gap(20),
            Text(
              "Welcome Home,",
              style: TextStyle(color: Colors.grey[600], fontSize: 20),
            ),
            Text(
              "MITCH KOKO",
              style: GoogleFonts.bebasNeue(fontSize: 62),
            ),
            Gap(25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
            ),
            Gap(25),
            Text(
              "Smart Devices",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey[800]),
            ),
            Expanded(
                child: GridView.builder(
              itemCount: mysmartdevice.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.3),
              itemBuilder: (BuildContext context, int index) {
                return SmartBox(
                    imagepath: mysmartdevice[index][1],
                    name: mysmartdevice[index][0],
                    poweron: mysmartdevice[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index));
              },
            ))
          ],
        ),
      ),
    );
  }
}
