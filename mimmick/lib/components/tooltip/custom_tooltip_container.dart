import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomTooltipContainer extends StatelessWidget {
  const CustomTooltipContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        width: 300,
        padding: const EdgeInsets.all(10),
        child: Wrap(children: [
          const Text(
            "Tooltip",
            style: TextStyle(
              color: Colors.white,
            ),
          ).h4(),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Try connecting to another server in case of a reported error,please wait, if nothing happens, try to write a letter to the post office",
            style: TextStyle(color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
