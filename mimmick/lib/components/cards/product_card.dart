import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.content,
    required this.liked,
  });
  final String title;
  final String content;
  final bool liked;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late bool _liked;
  @override
  void initState() {
    super.initState();
    _liked = widget.liked;
  }

  void toggleLiked() {
    setState(() {
      _liked = !_liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.asset(
                "assets/images/img.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  width: 190,
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 11,
                      letterSpacing: 1,
                    ),
                  ).sans(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Wrap(crossAxisAlignment: WrapCrossAlignment.end, children: [
                    const Text("\$", style: TextStyle(fontSize: 8)),
                    Text(
                      widget.content,
                    ),
                  ]),
                  const SizedBox(
                    width: 125,
                  ),
                  GestureDetector(
                    onTap: toggleLiked,
                    child: Icon(
                      _liked ? RadixIcons.heartFilled : RadixIcons.heart,
                      color: _liked ? Colors.red : Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ).intrinsic();
  }
}
