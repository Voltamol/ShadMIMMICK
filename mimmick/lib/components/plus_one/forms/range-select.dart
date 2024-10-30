import 'package:shadcn_flutter/shadcn_flutter.dart';

// for the app being built, lower limit cannot be made any lower than 18 years
// also age gap cannot exceed 4 years for those under 21
class CustomRangeSelect extends StatefulWidget {
  const CustomRangeSelect({super.key});

  @override
  State<CustomRangeSelect> createState() => _CustomRangeSelectState();
}

class _CustomRangeSelectState extends State<CustomRangeSelect> {
  SliderValue value = const SliderValue.ranged(0.18, 0.4);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'Age: ${(value.start * 100).round()} - ${(value.end * 100).round()}'),
        const SizedBox(
          height: 16,
        ),
        Slider(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
      ],
    );
  }
}
