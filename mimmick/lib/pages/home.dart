import 'package:mimmick/components/cimas/tiles/course.dart';
import 'package:mimmick/components/cimas/timeline/basic.dart';
import 'package:mimmick/components/images/logo.dart';
import 'package:mimmick/components/layouts/widget-level/horizontal.dart';
import 'package:mimmick/components/layouts/widget-level/vertical.dart';
import 'package:mimmick/components/text/headings.dart';
import 'package:mimmick/components/cimas/tiles/cart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Container(
        color: Colors.gray.withAlpha(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PageTitle(text: "Cimas"),
              SubTitle(text: "Cimas"),
              Logo(
                source: "assets/images/img.jpeg",
                sideLength: 90,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  placeholder: 'Enter your name',
                ),
              ),
              SecondaryButton(
                onPressed: () {},
                child: const Text('Secondary'),
              ),
              PrimaryButton(
                onPressed: () {},
                child: const Text('Primary'),
              ),
              // CartTile(),
              // CourseTile(),
              // CartTile(),
              const BasicTimeLine()
            ],
          ),
        ),
      ),
    );
  }
}
