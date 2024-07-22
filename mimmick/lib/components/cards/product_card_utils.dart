import 'package:shadcn_flutter/shadcn_flutter.dart';
class CardSubtitle extends StatelessWidget {
  const CardSubtitle({
    super.key,
    required this.content,
    required this.liked,
  });

  final String content;
  final bool liked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardContent(content: content),
          CardIcon(active: liked),
        ],
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
    );
  }
}

class CardIcon extends StatefulWidget {
  const CardIcon({super.key, required this.active});
  final bool active;
  @override
  State<CardIcon> createState() => _CardIconState();
}

class _CardIconState extends State<CardIcon> {
  late bool _active;
  @override
  void initState() {
    super.initState();
    _active = widget.active;
  }

  void toggleLiked() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: toggleLiked,
        child: Icon(
          _active ? RadixIcons.heartFilled : RadixIcons.heart,
          color: _active ? Colors.red : Colors.black,
        ),
      ),
    );
  }
}

class CardTitle extends StatelessWidget {
  const CardTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 190,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 11,
            letterSpacing: 1,
          ),
        ).sans(),
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Image.asset(
          "assets/images/img.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
