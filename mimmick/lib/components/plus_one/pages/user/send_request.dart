import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mimmick/components/forms/select.dart';
import 'package:mimmick/components/forms/text.dart';
import 'package:mimmick/components/navigation/curved_bottom_navigation.dart';
import 'package:mimmick/components/plus_one/forms/stepper.dart';
import 'package:mimmick/components/plus_one/surfaces/dialog.dart';
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
          PageTitle(
            text: "Who's ready for a date",
            color: Theme.of(context).colorScheme.primary,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SubTitle(
                text:
                    "Click the button below and you'll be set up before day ends"),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomDialog(
            children: [
              PlusOneStepper(
                children1: const [
                  Row(
                    children: [
                      Expanded(child: CustomSelect()),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextArea(
                    placeholder: "describe event",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextArea(
                    placeholder: "venue",
                  ),
                ],
                children2: const [
                  Row(
                    children: [
                      Expanded(child: CustomSelect()),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(child: CustomSelect()),
                    ],
                  ),
                ],
                children3: const [
                  CustomNumberField(
                    placeholder: "\$:",
                    title: "set your fee",
                  )
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: const CustomCurvedBottomNav(
        navigationItems: [
          JournalIcon(),
          RaisedHandIcon(),
          ActivityIcon(),
          PersonIcon(),
          BookmarkIcon(),
        ],
        indexRoutes: {
          0:"send-request/",
          1:"offers/",
          2:"active-dates",
          3:"profile/",
          4:"bookmarks/",
        },
      ),
    );
  }
}
