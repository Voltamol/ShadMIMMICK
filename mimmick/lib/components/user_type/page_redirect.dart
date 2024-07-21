import 'package:shadcn_flutter/shadcn_flutter.dart';

class BShape extends StatelessWidget {
  const BShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        SecondaryButton(
          onPressed: () {},
          shape: ButtonShape.rectangle,
          density: ButtonDensity.comfortable,
          child: const Text('Back'),
        ),
        PrimaryButton(
          onPressed: () {},
          shape: ButtonShape.circle,
          child: const Icon(BootstrapIcons.arrowRightShort),
        ),
      ],
    );
  }
}
