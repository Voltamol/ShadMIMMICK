import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog(
      {super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        PrimaryButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
