import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
    required this.child,
    required this.count,
  });
  final Widget child;
  final int count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: [
          child,
          PrimaryBadge(
            child: Text(count.toString(), style: TextStyle(fontSize: 8)),
          )
        ],
      ),
    );
  }
}
