import 'package:shadcn_flutter/shadcn_flutter.dart';

class DraftButtons extends StatelessWidget {
  const DraftButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: PrimaryButton(
            child: const Text('submit request'),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        SecondaryButton(
          child: const Text('save draft'),
        ),
      ],
    );
  }
}
