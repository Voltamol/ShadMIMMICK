import 'package:mimmick/components/user_type/cards.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class UserType extends StatelessWidget {
  const UserType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const SelectCard(
            text: 'UX Designer',
            icon: RadixIcons.layers,
            filled: false,
          ).intrinsic(),
          const SizedBox(
            width: 15,
          ),
          const SelectCard(
            text: 'UI Designer',
            icon: RadixIcons.pencil2,
            filled: false,
          ).intrinsic(),
          const SizedBox(
            width: 15,
          ),
          const SelectCard(
            text: 'Developer',
            icon: BootstrapIcons.codeSlash,
            filled: true,
          ).intrinsic(),
        ],
      ),
    );
  }
}
