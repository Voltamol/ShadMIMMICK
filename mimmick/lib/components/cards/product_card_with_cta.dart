import 'package:flutter/material.dart' as mui;
import 'package:mimmick/components/cards/product_card_utils.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProductCardWithCta extends StatelessWidget {
  const ProductCardWithCta({
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
          // CardImage(
          //   width: 100,
          //   height: 100,
          //   source: "assets/images/img.jpeg",
          // ),
          const SizedBox(
            width: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardTitle(title: title),
              const SizedBox(
                height: 10,
              ),
              CardContent(content: content),
              const SizedBox(
                height: 10,
              ),
              const CardCTA()
            ],
          ),
        ],
      ),
    ).intrinsic();
  
  }
}

class CardCTA extends StatelessWidget {
  const CardCTA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return mui.ElevatedButton(
      style: mui.ElevatedButton.styleFrom(
        backgroundColor: Colors.gray,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              2), // Set the border radius to zero
        ),
      ),
      onPressed: () {},
      child: const Text(
        "Add to cart",
        style: TextStyle(
          color: Colors.white,
        ),
      ).mono(),
    );
  }
}
