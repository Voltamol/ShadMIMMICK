import 'package:mimmick/components/forms/button.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.children, required this.title});
  final List<Widget> children;
  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomSubmitButton(
      text: title,
      action: () {
        showDialog(
          context: context,
          builder: (context) {
            final FormController controller = FormController();
            return AlertDialog(
              title: const Text('Edit profile'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
              actions: [
                PrimaryButton(
                  child: const Text('submit request'),
                  onPressed: () {
                    Navigator.of(context).pop(controller.values);
                  },
                ),
                SecondaryButton(
                  child: const Text('save draft'),
                  onPressed: () {
                    Navigator.of(context).pop(controller.values);
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
