
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? _value;
@override
Widget build(BuildContext context) {
  return Column(
    children: [
      DatePicker(
        value: _value,
        mode: PromptMode.popover,
        stateBuilder: (date) {
          if (date.isAfter(DateTime.now())) {
            return DateState.disabled;
          }
          return DateState.enabled;
        },
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
      const Gap(16),
      DatePicker(
        value: _value,
        mode: PromptMode.dialog,
        dialogTitle: const Text('Select Date'),
        stateBuilder: (date) {
          if (date.isAfter(DateTime.now())) {
            return DateState.disabled;
          }
          return DateState.enabled;
        },
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
    ],
  );
}

}