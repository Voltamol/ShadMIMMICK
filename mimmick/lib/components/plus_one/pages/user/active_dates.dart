import 'package:flutter/material.dart';
import 'package:mimmick/components/plus_one/tiles.dart';

class ActiveDatesPage extends StatelessWidget {
  const ActiveDatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: const Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Tile1(
            route: "client-request/",
            title: "Bruce Codes",
            subtitle: "16 days ago",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Divider(),
          ),
          Tile1(
            route: "client-request/",
            title: "Ndoradans Libero",
            subtitle: "7 days ago",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Divider(),
          ),
          Tile1(
            route: "client-request/",
            title: "Keith Shingi",
            subtitle: "4 days ago",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Divider(),
          ),
          Tile1(
            route: "client-request/",
            title: "Somandla Soma",
            subtitle: "16 days ago",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Divider(),
          ),
          Tile1(
            route: "client-request/",
            title: "Goody Goodwell",
            subtitle: "16 days ago",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Divider(),
          ),
          Tile1(
            route: "client-request/",
            title: "Goody Goodwell",
            subtitle: "16 days ago",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
