import 'package:mimmick/components/cards/product_card_with_cta.dart';
import 'package:mimmick/components/cards/swiper-card.dart';
import 'package:mimmick/components/user_type/user_type.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      // SizedBox(height:20),
      // UserType(),
      // SizedBox(height:20),
      //  SizedBox(
      //   width: 320,
      //   child: ProductCardWithCta(
      //     title: "NIKE Sweat-absorbing running T-shirt",
      //     content: "80.10",
      //     liked: true,
      //   )
      //  ),
      //  SizedBox(height:20),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          SizedBox(height: 510, child: Example()),
        ],
      )
    ]));
  }
}
