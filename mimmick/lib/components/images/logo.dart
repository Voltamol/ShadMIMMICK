import 'package:flutter/cupertino.dart';
import 'package:mimmick/components/cards/product_card_utils.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.source,
    required this.sideLength,
  });
  final String source;
  final double sideLength;
  @override
  Widget build(BuildContext context) {
    return CardImage(width: sideLength, height: sideLength, source: source);
  }
}
