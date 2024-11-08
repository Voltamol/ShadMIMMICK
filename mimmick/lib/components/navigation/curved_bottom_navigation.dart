import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomCurvedBottomNav extends StatelessWidget {
  CustomCurvedBottomNav({
    super.key,
    required this.navigationItems,
    required this.indexRoutes,
    this.index=0,
  });
  final List<Widget> navigationItems;
  final Map<int, String> indexRoutes;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: index,
      color: Theme.of(context).colorScheme.secondary,
      backgroundColor: Colors.transparent,
      items: navigationItems,
      onTap: (index) {
        
        Navigator.of(context).pushNamed(indexRoutes[index]!);
      },
    );
  }
}

class JournalIcon extends StatelessWidget {
  const JournalIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      BootstrapIcons.journal,
      size: 30,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}

class RaisedHandIcon extends StatelessWidget {
  const RaisedHandIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      BootstrapIcons.personRaisedHand,
      size: 30,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}

class ActivityIcon extends StatelessWidget {
  const ActivityIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      //BootstrapIcons.journal,
      BootstrapIcons.activity,
      size: 30,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}

class PersonIcon extends StatelessWidget {
  const PersonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      BootstrapIcons.person,
      size: 30,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}

class BookmarkIcon extends StatelessWidget {
  const BookmarkIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      BootstrapIcons.bookmark,
      size: 30,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
