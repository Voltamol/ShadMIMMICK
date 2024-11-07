import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomCurvedBottomNav extends StatelessWidget {
  const CustomCurvedBottomNav({
    super.key,
    required this.navigationItems,
    required this.indexRoutes,
  });
  final List<Widget> navigationItems;
  final Map<int, String> indexRoutes;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Theme.of(context).colorScheme.secondary,
      backgroundColor: Colors.transparent,
      items: navigationItems,
      onTap: (index) {
        if (kDebugMode) {
          print(indexRoutes[index]!);
        }
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
