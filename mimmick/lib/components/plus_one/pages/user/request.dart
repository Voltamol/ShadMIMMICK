import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mimmick/components/forms/button.dart';

class ClientRequest extends StatelessWidget {
  const ClientRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              "assets/images/team/team-1.jpg",
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.person,
                          color: Theme.of(context).colorScheme.primary),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Client Name :",
                        style: GoogleFonts.dancingScript(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.w700,
                        )),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Bruce, 24",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.info_outline,
                          color: Theme.of(context).colorScheme.primary),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Title:",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Text(
                  "End of Year Celebratory Dinner",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.location_pin,
                          color: Theme.of(context).colorScheme.primary),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Venue:",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Meickles Hotel, Harare",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.shop_outlined,
                          color: Theme.of(context).colorScheme.primary),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Dress Code:",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Text(
                  "black dress(female)",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month_outlined,
                          color: Theme.of(context).colorScheme.primary),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Date:",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Text(
                  "23 December",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.watch,
                          color: Theme.of(context).colorScheme.primary),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Start Time:",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Text(
                  "14:55",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.timelapse_outlined,
                          color: Theme.of(context).colorScheme.primary),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Duration:",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Text(
                  "3hours",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomSubmitButton(action: () {}, text: "Send Offer")
        ],
      ),
    );
  }
}
