import 'package:flutter/material.dart';
import 'package:mimmick/components/cards/swiper-card.dart';
import 'package:mimmick/components/utilities/badge.dart';
import 'package:mimmick/components/utilities/chip.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: CustomChip(
              title: "selected candidates : 4",
              icon: Icons.clear,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          CustomSwiperCard(),
        ],
      ),
    );
  }
}
