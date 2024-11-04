import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomCurvedBottomNav extends StatelessWidget {
  const CustomCurvedBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Theme.of(context).colorScheme.secondary,
      backgroundColor: Colors.transparent,
      items: <Widget>[
        Icon(
          BootstrapIcons.journal,
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        ),
        Icon(
          //BootstrapIcons.journal,
          BootstrapIcons.activity,
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        ),
        Icon(
          BootstrapIcons.bookmark,
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        ),
        Icon(
          BootstrapIcons.personRaisedHand,
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        ),
        Icon(
          BootstrapIcons.person,
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
