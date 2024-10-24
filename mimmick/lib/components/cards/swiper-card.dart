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

  final List<Widget> cards = [
    const ProfileCard(
        title: "voltamol", age: 24, color: Colors.green, location: "Harare"),
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
                  child: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.red,
                  )),
              const SizedBox(
                width: 10,
              ),
              const BookMarkButton(),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                  onPressed: () => controller.swipe(CardSwiperDirection.right),
                  child: const Icon(Icons.favorite_outline)),
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

class ProfileCard extends StatelessWidget {
  final String title;
  final String location;
  final int age;
  final color;
  const ProfileCard({
    super.key,
    required this.title,
    required this.location,
    required this.age,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Stack(
        children: [
          //image here
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Container(
                  width: 300,
                  height: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$title, ${age.toString()}",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 24)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: color,
                          ),
                          Text(
                            location,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
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
  void toggleIcon() {
    setState(() {
      clicked = !clicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: toggleIcon,
      child: Icon(
        clicked ? Icons.bookmark : Icons.bookmark_outline,
      ),
    );
  }
}
