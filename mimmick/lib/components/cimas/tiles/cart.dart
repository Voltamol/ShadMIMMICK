
import 'package:mimmick/components/images/logo.dart';
import 'package:mimmick/components/layouts/widget-level/horizontal.dart';
import 'package:mimmick/components/layouts/widget-level/vertical.dart';
import 'package:mimmick/components/text/headings.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 90,
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5,
        ),
        child: const Layout13(
          children: [
            Logo(
              source: "assets/images/img.jpeg",
              sideLength: 90,
            ),
            Layout5(children: [
              TileTitle(
                text: "ibuprofen",
              ),
              SubTitle(text: "24 days"),
            ]),
            Layout1(
              children: [
                Icon(Icons.add),
                Icon(Icons.cancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
