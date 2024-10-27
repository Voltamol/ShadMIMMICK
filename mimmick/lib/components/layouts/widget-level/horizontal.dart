import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Expanded(child: children[0]), Expanded(child: children[1])],
    );
  }
}

class Layout3 extends StatelessWidget {
  const Layout3({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: children[0]),
        Expanded(child: children[1]),
        Expanded(child: children[2])
      ],
    );
  }
}

class Layout7 extends StatelessWidget {
  const Layout7({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: children[0],
        ),
        Expanded(
          flex: 1,
          child: children[1],
        )
      ],
    );
  }
}

class Layout8 extends StatelessWidget {
  const Layout8({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 1,child: children[0],),
        Expanded(flex: 2,child: children[1],)
      ],
    );
  }
}

class Layout12 extends StatelessWidget {
  const Layout12({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // Ensure children has at least 3 elements
    assert(children.length >= 3, 'children must have at least 3 widgets');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1, // 1 part
          child: children[0],
        ),
        Expanded(
          flex: 3, // 3 parts
          child: children[1],
        ),
        Expanded(
          flex: 1, // 1 part
          child: children[2],
        ),
      ],
    );
  }
}

class Layout13 extends StatelessWidget {
  const Layout13({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // Ensure children has at least 3 elements
    assert(children.length >= 3, 'children must have at least 3 widgets');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2, // 1 part
          child: children[0],
        ),
        Expanded(
          flex: 3, // 3 parts
          child: children[1],
        ),
        Expanded(
          flex: 1, // 1 part
          child: children[2],
        ),
      ],
    );
  }
}
