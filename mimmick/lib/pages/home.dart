import 'package:mimmick/components/cards/product_card_with_cta.dart';
import 'package:mimmick/components/cimas/activity-tile.dart';
import 'package:mimmick/components/layouts/widget-level/horizontal.dart';
import 'package:mimmick/components/layouts/widget-level/hybrid.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(height: 40),
        SizedBox(
          height: 90,
          child: Layout1(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Placeholder(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Placeholder(),
            )
          ]),
        ),
        SizedBox(
          height: 90,
          child: Layout2(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Placeholder(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Placeholder(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Placeholder(),
            )
          ]),
        )
      ]),
    ));
  }
}
