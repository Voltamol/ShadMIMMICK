import 'package:mimmick/components/cards/product_card_utils.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

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
    return Card(
      fillColor: Colors.blue.shade400,
      filled: true,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CardImage(
            width: 40,
            height: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(content),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Text(value.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700)),
                Text(units),
              ],
            ),
          )
        ],
      ),
    ).intrinsic();
  }
}
