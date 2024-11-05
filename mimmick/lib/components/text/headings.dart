import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key, required this.text, this.color});

  final String text;
  final Color? color; // Change Colors? to Color?

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w800,
        color:
            color ?? Theme.of(context).colorScheme.secondary, // Use ?? operator
      ),
    );
  }
}

class PageSubTitle extends StatelessWidget {
  const PageSubTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class TileTitle extends StatelessWidget {
  const TileTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
