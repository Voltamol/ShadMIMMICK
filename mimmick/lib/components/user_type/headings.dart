import 'package:shadcn_flutter/shadcn_flutter.dart';

class Heading1 extends StatelessWidget {
  const Heading1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SELECT USER TYPE',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 20,
            child: Divider(
              thickness: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
