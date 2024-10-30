import 'package:mimmick/components/cimas/timeline/basic.dart';
import 'package:mimmick/components/images/logo.dart';
import 'package:mimmick/components/plus_one/forms/range-select.dart';
import 'package:mimmick/components/plus_one/forms/text.dart';
import 'package:mimmick/components/plus_one/surfaces/dialog.dart';
import 'package:mimmick/components/text/headings.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Container(
        color: Colors.gray.withAlpha(30),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              CustomDialog(
                children: [
                  const Text(
                      'Make changes to your profile here. Click save when you\'re done '),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(title: "Specify Venue"),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomRangeSelect(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  //MultiSelect for languages
                  const SizedBox(
                    height: 16,
                  ),

                  // TextArea(
                  //   placeholder:
                  //       "other requirements eg(complexion(light,dark,neutral), structure(chubby,slender)), etc",
                  // ),
                  Flexible(
                    child: CustomTextArea(
                      placeholder: "other requirements",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextArea(
                    title: "anything else?",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
