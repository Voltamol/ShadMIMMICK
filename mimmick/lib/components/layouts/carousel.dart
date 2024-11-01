import 'package:flutter/gestures.dart';
import 'package:mimmick/components/feedback/alert-dialog.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  final CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 10; i++)
                CardImage(
                  backgroundColor: Colors.green,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const CustomAlertDialog(
                          title: 'Card Image',
                          content: 'You clicked on a card image.',
                        );
                      },
                    );
                  },
                  image: SizedBox(
                    height: 200,
                    width: 150,
                    child: Image.asset(
                      'assets/images/img.jpeg',
                    ),
                  ),
                  //title: Text('Card Number ${i + 1}'),
                  //subtitle: const Text('Lorem ipsum dolor sit amet'),
                ),
            ],
          ).gap(8),
        ),
      ),
    );
  }
}
