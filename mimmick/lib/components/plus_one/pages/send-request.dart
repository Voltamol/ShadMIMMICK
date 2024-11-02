import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mimmick/components/forms/button.dart';
import 'package:mimmick/components/text/headings.dart';

class SendRequestPage extends StatelessWidget {
  const SendRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/json/lottie/mail.json"),
          const PageTitle(text: "Who's ready for a date"),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SubTitle(
                text:
                    "Click the button below and you'll be set up before day ends"),
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomSubmitButton()
        ],
      ),
    );
  }
}
