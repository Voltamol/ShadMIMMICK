import 'package:flutter/material.dart';
import 'package:mimmick/components/plus_one/tiles.dart';

class TilePreview extends StatelessWidget {
  const TilePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Tile1(
              route: "client-request/",
              title: "Bruce Codes",
              subtitle: "16 days ago",
            )
          ],
        ),
      ),
    );
  }
}
