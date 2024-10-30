
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onPressed: () {
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
                  child: const Text('Save changes'),
                  onPressed: () {
                    Navigator.of(context).pop(controller.values);
                  },
                ),
              ],
            );
          },
        );
      },
      child: const Text('Edit Profile'),
    );
  }
}
