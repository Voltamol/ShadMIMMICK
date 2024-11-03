import 'package:shadcn_flutter/shadcn_flutter.dart';

// wrong layout but works for mobile, will definitely have to change in production
class CustomTextArea extends StatelessWidget {
  const CustomTextArea({
    super.key,
    this.placeholder = "",
    this.title = "",
  });
  final String? placeholder;
  final String? title;
  @override
  Widget build(BuildContext context) {
    final fieldController = TextEditingController();
    return (title == "")
        ? TextArea(
            placeholder: placeholder!,
            controller: fieldController,
          )
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(title!),
            ),
            TextArea(
              placeholder: placeholder!,
              controller: fieldController,
            ),
          ]);
  }
}

class CustomNumberField extends StatelessWidget {
  const CustomNumberField({
    super.key,
    this.placeholder = "",
    this.title = "",
  });
  final String? placeholder;
  final String? title;
  @override
  Widget build(BuildContext context) {
    final fieldController = TextEditingController();
    return (title == "")
        ? TextField(
            placeholder: placeholder!,
            controller: fieldController,
            keyboardType: TextInputType.numberWithOptions(),
          )
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(title!),
            ),
            TextField(
              placeholder: placeholder!,
              controller: fieldController,
              keyboardType: TextInputType.numberWithOptions(),
            ),
          ]);
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.placeholder = "",
    this.title = "",
  });
  final String? placeholder;
  final String? title;
  @override
  Widget build(BuildContext context) {
    final fieldController = TextEditingController();
    return (title == "")
        ? TextField(
            placeholder: placeholder!,
            controller: fieldController,
          )
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(title!),
            ),
            TextField(
              placeholder: placeholder!,
              controller: fieldController,
            ),
          ]);
  }
}
