import 'package:google_fonts/google_fonts.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Chip(
      style: const ButtonStyle.outline(),
      trailing: ChipButton(
        onPressed: () {},
        child: GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("clear candidates"),
                    content: const Text(
                        "Are you sure you want to clear the selected candidates?"),
                    actions: [
                      PrimaryButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("cancel"),
                      ),
                    ],
                  );
                });
          },
          child: Icon(
            icon,
            color: Colors.red,
            size: 22,
          ),
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.itim(color: Colors.pink),
      ),
    );
  }
}
