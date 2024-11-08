import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mimmick/components/layouts/carousel.dart';
import 'package:mimmick/components/navigation-drawer.dart';
import 'package:mimmick/components/navigation/curved_bottom_navigation.dart';
import 'package:mimmick/components/text/headings.dart';
import 'package:badges/badges.dart' as badges;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        actions: const [
          badges.Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: Icon(Icons.favorite_outline, size: 32),
          ),
          SizedBox(
            width: 20,
          ),
          badges.Badge(
            badgeContent: Text(
              '99',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            child: Icon(Icons.notifications_outlined, size: 32),
          ),
          SizedBox(
            width: 20,
          ),
          badges.Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: Icon(Icons.people, size: 32),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: CustomNavigationDrawer(),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const CustomCarousel(),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PageTitle(
                  text: " Voltamol, 24",
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.3)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Mufakose, ",
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Text(
                "Harare",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.edit, color: Theme.of(context).colorScheme.primary),
      ),
      bottomNavigationBar: CustomCurvedBottomNav(
        index: 3,
        navigationItems: const [
          JournalIcon(),
          RaisedHandIcon(),
          ActivityIcon(),
          PersonIcon(),
          BookmarkIcon(),
        ],
        indexRoutes: const {
          0: "send-request/",
          1: "offers/",
          2: "active-dates/",
          3: "profile/",
          4: "bookmarks/",
        },
      ),
    );
  }
}
