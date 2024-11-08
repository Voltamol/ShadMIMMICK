import 'package:flutter/material.dart';
import 'package:mimmick/components/cards/swiper-card.dart';
import 'package:mimmick/components/navigation-drawer.dart';
import 'package:mimmick/components/navigation/curved_bottom_navigation.dart';
import 'package:mimmick/components/utilities/badge.dart';
import 'package:mimmick/components/utilities/chip.dart';
import 'package:badges/badges.dart' as badges;

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

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
        children: [
          CustomSwiperCard(),
        ],
      ),
      bottomNavigationBar: CustomCurvedBottomNav(
        index: 1,
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
