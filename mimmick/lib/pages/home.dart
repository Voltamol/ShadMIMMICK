import 'package:mimmick/components/cards/product_card_with_cta.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      child: Center(
        child: SizedBox(
            width: 320,
            child: ProductCardWithCta(
              title: "NIKE Sweat-absorbing running T-shirt",
              content: "80.10",
              liked: true,
            )),
      ),
    );
  }
}
