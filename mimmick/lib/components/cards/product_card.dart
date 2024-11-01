import 'package:mimmick/components/cards/product_card_utils.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.content,
    required this.liked,
  });
  final String title;
  final String content;
  final bool liked;

  @override
  Widget build(BuildContext context) {
    return Card(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // const CardImage(
          //   width: 100,
          //   height: 100,
          //   source: "assets/images/img.jpeg",
          // ),
          const SizedBox(
            width: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CardTitle(title: title),
              const SizedBox(
                height: 40,
              ),
              CardSubtitle(content: content, liked: liked)
            ],
          ),
        ],
      ),
    ).intrinsic();
  }
}

