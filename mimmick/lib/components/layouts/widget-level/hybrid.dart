import 'package:flutter/material.dart';
import 'package:mimmick/components/layouts/widget-level/horizontal.dart';
import 'package:mimmick/components/layouts/widget-level/vertical.dart';

// Expanded widget used sparingly here...
class Layout4 extends StatelessWidget {
  const Layout4({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Layout5(children: [
      Layout1(children: [children[0], children[1]]),
      Layout1(children: [children[2], children[3]])
    ]);
  }
}

class Layout2 extends StatelessWidget {
  const Layout2({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Layout5(children: [
      Layout1(children: [children[0], children[1]]),
      children[2],
    ]);
  }
}
