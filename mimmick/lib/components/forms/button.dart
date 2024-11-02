import 'package:mimmick/components/text/headings.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: PrimaryButton(
        onPressed: () {
        },
        child: SizedBox(
          width: 340,
          height: 30,
          child: Center(
            child: const SubTitle(text: "Send Request"),
          ),
        ),
      ),
    );
  }
}
