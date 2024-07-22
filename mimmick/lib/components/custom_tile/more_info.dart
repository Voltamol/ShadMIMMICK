import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.title,
    required this.content,
    required this.foreColor,
    required this.tileColor,
  });
  final String title;
  final String content;
  final Color tileColor;
  final Color foreColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Avatar(
            initials: Avatar.getInitials('sunarya-thito'),
            photoUrl: 'https://avatars.githubusercontent.com/u/64018564?v=4',
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: foreColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                content,
                style: TextStyle(
                  color: foreColor,
                  fontSize: 12,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          Icon(
            RadixIcons.chevronRight,
            color: foreColor,
          )
        ],
      ),
    ).intrinsic();
  }
}
