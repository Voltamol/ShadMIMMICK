import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomSkeleton extends StatelessWidget {
  const CustomSkeleton({super.key, required this.content,required this.title});
  final String title;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(24),
        Basic(
          title: Text(title),
          content: content,
          leading: const Avatar(
            initials: '',
          ).asSkeleton(),
          // Note: Avatar and other Image related widget needs its own skeleton
          trailing: const Icon(Icons.arrow_forward),
        ).asSkeleton(),
      ],
    );
  }
}
