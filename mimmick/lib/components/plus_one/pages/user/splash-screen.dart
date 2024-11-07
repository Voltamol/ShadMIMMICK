import 'package:flutter/material.dart';
import 'package:mimmick/components/forms/button.dart';
import 'package:mimmick/components/text/headings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset("assets/images/logo.png"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Need company?,",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 24,
              ),
            ),
            Text(
              "We got you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 24,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 150,
        ),
        CustomSubmitButton(
            action: () {
              Navigator.of(context).pushNamed("send-request/");
            },
            text: "Start Exploring"),
        const SizedBox(
          height: 50,
        )
      ],
    ));
  }
}
