import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mimmick/components/forms/button.dart';
import 'package:mimmick/components/layouts/widget-level/horizontal.dart';
import 'package:mimmick/components/text/headings.dart';

class ClientRequest extends StatelessWidget {
  const ClientRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            // Container(
            //   color: Colors.white,
            //   alignment: Alignment.center,
            //   padding: const EdgeInsets.all(12),
            //   child: Image.asset(
            //     "assets/images/team/team-1.jpg",
            //     height: 200,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(
                  Icons.person,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 50,
                ),
                const Column(
                  children: [
                    TileTitle(text: "Client Name"),
                    Text("Bruce Jongwe, 24", style: TextStyle(fontSize: 18)),
                  ],
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.info_outline,
                    color: Theme.of(context).colorScheme.primary),
                const SizedBox(
                  width: 50,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TileTitle(text: "Title"),
                    Text("End of Year Celebratory Dinner",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.location_pin,
                    color: Theme.of(context).colorScheme.primary),
                const SizedBox(
                  width: 50,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TileTitle(text: "Venue"),
                    Text("Meickles Hotel, Harare",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.shop_outlined,
                    color: Theme.of(context).colorScheme.primary),
                const SizedBox(
                  width: 50,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TileTitle(text: "Dress Code"),
                    Text("black dress(female),black\ntuxedo(male)",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.calendar_month_outlined,
                    color: Theme.of(context).colorScheme.primary),
                const SizedBox(
                  width: 50,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TileTitle(text: "Date"),
                    Text("23 December", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.watch, color: Theme.of(context).colorScheme.primary),
                const SizedBox(
                  width: 50,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TileTitle(text: "Start Time"),
                    Text("14:55", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(
                  Icons.timelapse_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 50,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TileTitle(text: "Duration"),
                    Text("3 hours", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomSubmitButton(action: () {}, text: "Send Offer"),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
