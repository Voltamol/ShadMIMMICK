import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mimmick/components/layouts/widget-level/horizontal.dart';
import 'package:mimmick/components/text/headings.dart';

class Tile1 extends StatelessWidget {
  const Tile1({
    super.key,
    required this.route,
    required this.title,
    required this.subtitle,
  });
  final String route;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context,route),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Container(
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Layout12(children: [
            Image.asset("assets/images/team/team-1.jpg"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.itim(fontSize: 18),
                ),
                // const Text(
                //   "casual dating",
                //   style: TextStyle(fontSize: 16, letterSpacing: 1),
                // ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.itim(fontSize: 12),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Icon(Icons.chevron_right,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ]),
        ),
      ),
    );
  }
}
