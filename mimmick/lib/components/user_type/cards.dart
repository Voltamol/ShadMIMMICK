import 'package:shadcn_flutter/shadcn_flutter.dart';

class SelectCard extends StatefulWidget {
  const SelectCard({
    super.key,
    required this.text,
    required this.icon,
    required this.filled,
  });
  final String text;
  final IconData icon;
  final bool filled;

  @override
  State<SelectCard> createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  bool _filled = false;
  @override
  void initState() {
    super.initState();
    _filled = widget.filled;
  }

  void toggleFilled() {
    setState(() {
      _filled = !_filled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleFilled,
      child: Card(
        filled: _filled,
        fillColor: Colors.black,
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 32,
              color: _filled ? Colors.white : Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: _filled ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
