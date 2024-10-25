import 'package:flutter/material.dart';

class Layout5 extends StatelessWidget {
  const Layout5({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: children[0]),
        Expanded(child: children[1])
    ],);
  }
}

class Layout6 extends StatelessWidget {
  const Layout6({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: children[0]),
        Expanded(child: children[1]),
        Expanded(child: children[2])
    ],);
  }
}

class Layout9 extends StatelessWidget {
  const Layout9({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: children[0]),
        children[1],
        children[2]
    ],);
  }
}

class Layout10 extends StatelessWidget {
  const Layout10({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: children[0]),
        children[1],
    ],);
  }
}

class Layout11 extends StatelessWidget {
  const Layout11({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        children[0],
        Expanded(child: children[1]),

    ],);
  }
}