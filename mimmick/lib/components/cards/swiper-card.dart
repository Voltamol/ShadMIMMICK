import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:animated_emoji/animated_emoji.dart';

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final CardSwiperController controller = CardSwiperController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('1'),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(8)),
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(8)),
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      decoration: BoxDecoration(
          color: Colors.purple, borderRadius: BorderRadius.circular(8)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // Replace Flexible with Expanded
          child: CardSwiper(
            controller: controller,
            cardsCount: cards.length,
            onSwipe: _onSwipe,
            onUndo: _onUndo,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) =>
                    cards[index],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                  onPressed: () => controller.swipe(CardSwiperDirection.left),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedEmoji(
                      AnimatedEmojis.fromEmojiString('😒')!,
                      size: 100,
                    ),
                  )),
              const SizedBox(
                width: 10,
              ),
              BookMarkButton(),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                  onPressed: () => controller.swipe(CardSwiperDirection.right),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedEmoji(
                      AnimatedEmojis.fromEmojiString('👍')!,
                      size: 100,
                    ),
                  )),
            ], // Added this closing bracket
          ), // Added this closing bracket
        ), // Added this closing bracket
      ],
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}

class BookMarkButton extends StatefulWidget {
  const BookMarkButton({
    super.key,
  });

  @override
  State<BookMarkButton> createState() => _BookMarkButtonState();
}

class _BookMarkButtonState extends State<BookMarkButton> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        clicked ? Icons.bookmark : Icons.bookmark_outline,
      ),
    );
  }
}
