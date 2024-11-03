import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mimmick/components/feedback/alert-dialog.dart';
import 'package:mimmick/components/forms/button.dart';
import 'package:mimmick/components/forms/select.dart';
import 'package:mimmick/components/forms/stepper.dart';
import 'package:mimmick/components/forms/text.dart';
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
          CustomDialog(children: [
            PlusOneStepper(
              children1:const [
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
                ], children2:const [
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
                  ], children3:const [
                    CustomNumberField(
                      placeholder: "\$:",
                      title: "set your fee",
                    )
                  ],
            )
          ],)
        ],
      ),
    );
  }
}
