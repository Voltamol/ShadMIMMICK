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
    return SizedBox(
      width: 800,
      child: Row(
        children: [
          OutlineButton(
              shape: ButtonShape.circle,
              onPressed: () {
                controller.animatePrevious(const Duration(milliseconds: 1500));
              },
              child: Icon(Icons.arrow_back,
                  color: Theme.of(context).colorScheme.primary)),
          const Gap(8),
          Expanded(
            child: SizedBox(
              height: 300,
              child: Carousel(
                // frameTransform: Carousel.fadingTransform,
                //transition: const CarouselTransition.sliding(gap: 24),
                controller: controller,
                //sizeConstraint: const CarouselFixedConstraint(200),
                autoplaySpeed: const Duration(seconds: 2),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/team/team-3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                duration: const Duration(seconds: 1),
              ),
            ),
          ),
          const Gap(8),
          OutlineButton(
              shape: ButtonShape.circle,
              onPressed: () {
                controller.animateNext(const Duration(milliseconds: 500));
              },
              child: Icon(Icons.arrow_forward,
                  color: Theme.of(context).colorScheme.primary)),
        ],
      ),
    );
  }
}
