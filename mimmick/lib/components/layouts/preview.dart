import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:mimmick/components/layouts/widget-level/horizontal.dart';
import 'package:mimmick/components/layouts/widget-level/hybrid.dart';
import 'package:mimmick/components/layouts/widget-level/vertical.dart';

class LayoutPreview extends StatelessWidget {
  const LayoutPreview({super.key});

  @override
  Widget build(BuildContext context) {
    double boxHeight = 150;
    return Scaffold(
        child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 40),
        const Text("layout1"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout1(children: [Placeholder(), Placeholder()]),
          ),
        ),
        const Text("layout2"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout2(
                children: [Placeholder(), Placeholder(), Placeholder()]),
          ),
        ),
        const Text("layout3"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout3(children: [
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ]),
          ),
        ),
        const Text("layout4"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout4(children: [
              Placeholder(),
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ]),
          ),
        ),
        const Text("layout5"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout5(children: [
              Placeholder(),
              Placeholder(),
            ]),
          ),
        ),
        const Text("layout6"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout6(children: [
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ]),
          ),
        ),
        const Text("layout7"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout7(children: [Placeholder(), Placeholder()]),
          ),
        ),
        const Text("layout8"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout8(children: [Placeholder(), Placeholder()]),
          ),
        ),
        const Text("layout9"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout9(children: [
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ]),
          ),
        ),
        const Text("layout10"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout10(children: [Placeholder(), Placeholder()]),
          ),
        ),
        const Text("layout11"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout11(children: [Placeholder(), Placeholder()]),
          ),
        ),
        const Text("layout12"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout12(children: [
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ]),
          ),
        ),
        const Text("layout13"),
        SizedBox(
          height: boxHeight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Layout13(children: [
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ]),
          ),
        ),
      ]),
    ));
  }
}
