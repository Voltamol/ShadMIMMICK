import 'package:mimmick/components/layouts/widget-level/horizontal.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

// ActivityTile(
//           title: "ibuprofen",
//           content: "after lunch",
//           units: "mg",
//           value: 10,
//         )


class ActivityTile extends StatelessWidget {
  final String title;
  final String content;
  final double value;
  final String units;
  const ActivityTile({
    super.key,
    required this.title,
    required this.content,
    required this.units,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    double height = 90;
    double padding = 5;
    return Container(
      child: Layout12(children: [
        SizedBox(
          height: height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Placeholder(),
          ),
        ),
        SizedBox(
          height: height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Placeholder(),
          ),
        ),
        SizedBox(
          height: height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Placeholder(),
          ),
        ),
      ]),
    );
  }
}
