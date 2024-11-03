import 'package:flutter/material.dart';
import 'package:mimmick/components/forms/select.dart';
import 'package:mimmick/components/forms/text.dart';
import 'package:mimmick/components/plus_one/forms/draft-buttons.dart';

class DraftRequest extends StatelessWidget {
  const DraftRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(child: CustomSelect()),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            
            SizedBox(
              height: 5,
            ),
            CustomTextField(placeholder: "\$:", title: "appreciation fee"),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(child: CustomSelect()),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            DraftButtons()
          ],
        ),
      ),
    );
  }
}
