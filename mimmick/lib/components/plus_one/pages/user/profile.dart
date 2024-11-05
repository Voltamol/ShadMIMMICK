import 'package:flutter/material.dart';
import 'package:mimmick/components/layouts/carousel.dart';
import 'package:mimmick/components/navigation/curved_bottom_navigation.dart';
import 'package:mimmick/components/text/headings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset("assets/images/team/team-1.jpg"),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              PageTitle(text: " Voltamol, 24"),
            ],
          ),
          const Row(
            children: [
              TileTitle(text: " Mufakose"),
              SizedBox(
                width: 8,
              ),
              PageSubTitle(text: "Harare")
            ],
          ),
          const SizedBox(height: 20),
          const CustomCarousel()
        ],
      ),
      bottomNavigationBar: const CustomCurvedBottomNav(),
    );
  }
}
