import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[400],
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
                style:const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                content,
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          const Icon(
            RadixIcons.chevronRight,
            color: Colors.white,
          )
        ],
      ),
    ).intrinsic();
  }
}
