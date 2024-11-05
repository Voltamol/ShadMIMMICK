import 'package:mimmick/components/text/headings.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    super.key,
    required this.action,
    this.text="Submit",
  });
  final action;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: PrimaryButton(
        onPressed: action,
        child: SizedBox(
          width: 340,
          height: 30,
          child: Center(
            child: Text(text!),
          ),
        ),
      ),
    );
  }
}
