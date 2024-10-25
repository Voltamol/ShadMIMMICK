import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:lottie/lottie.dart';
//height 510
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
        title: "voltamol",
        age: 24,
        color: Colors.pink,
        location: "Harare",
        image: "assets/images/team/team-1.jpg"),
    const ProfileCard(
        title: "voltamol",
        age: 24,
        color: Colors.pink,
        location: "Harare",
        image: "assets/images/team/team-2.jpg"),
    const ProfileCard(
        title: "voltamol",
        age: 24,
        color: Colors.pink,
        location: "Harare",
        image: "assets/images/team/team-3.jpg"),
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
  final String image;
  const ProfileCard(
      {super.key,
      required this.title,
      required this.location,
      required this.age,
      required this.color,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(16.0), // Set your desired border radius
            child: Image.asset(
              image,
              fit: BoxFit
                  .fitHeight, // Optional: ensure the image covers the area
            ),
          ),
          Positioned(
            bottom: 0, // Position the Column at the bottom of the Stack
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Adjust padding as needed
              child: Column(
                mainAxisSize: MainAxisSize.min, // Adjust to fit content
                children: [
                  Container(
                    width: 300,
                    height: 80,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title, ${age.toString()}",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 24,
                          ),
                        ),
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
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10), // Space below the container
                ],
              ),
            ),
          ),
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

class _BookMarkButtonState extends State<BookMarkButton>
    with SingleTickerProviderStateMixin {
  bool clicked = false;
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration:Duration(seconds:2),
      vsync: this
      );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void toggleIcon() {
    if (clicked == false) {
      _controller.forward();
      clicked = true;
    } else {
      _controller.reverse();
      clicked = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: toggleIcon,
        child: Lottie.network(
            controller: _controller,
            "https://lottie.host/4704735f-1448-4805-b81c-03470ad93069/4pH3Mt6Ad4.json")
        // child: Icon(
        //   //clicked ? Icons.bookmark : Icons.bookmark_outline,
        // ),
        );
  }
}
