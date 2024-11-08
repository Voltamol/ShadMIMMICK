import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mimmick/components/forms/select.dart';
import 'package:mimmick/components/forms/text.dart';
import 'package:mimmick/components/navigation-drawer.dart';
import 'package:mimmick/components/navigation/curved_bottom_navigation.dart';
import 'package:mimmick/components/plus_one/forms/stepper.dart';
import 'package:mimmick/components/plus_one/surfaces/dialog.dart';
import 'package:mimmick/components/text/headings.dart';
import 'package:badges/badges.dart' as badges;

class SendRequestPage extends StatelessWidget {
  const SendRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const badges.Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              child: Icon(Icons.favorite_outline, size: 32),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: const badges.Badge(
              badgeContent: Text(
                '99',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              child: Icon(Icons.notifications_outlined, size: 32),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed("requests/"),
            child: const badges.Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              child: Icon(Icons.people, size: 32),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: CustomNavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 280,
              child: Lottie.asset("assets/json/lottie/mail.json"),
            ),
            PageTitle(
              text: "Who's ready for a date",
              color: Theme.of(context).colorScheme.primary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: SubTitle(
                  text:
                      "Click the button below and you'll be set up before day ends"),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomDialog(
              title: "Draft A Request",
              children: [
                PlusOneStepper(
                  children1: const [
                    Row(
                      children: [
                        Expanded(child: CustomSelect()),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextArea(
                      placeholder: "describe event",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextArea(
                      placeholder: "venue",
                    ),
                  ],
                  children2: const [
                    Row(
                      children: [
                        Expanded(child: CustomSelect()),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(child: CustomSelect()),
                      ],
                    ),
                  ],
                  children3: const [
                    CustomNumberField(
                      placeholder: "\$:",
                      title: "set your fee",
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomCurvedBottomNav(
        navigationItems: const [
          JournalIcon(),
          RaisedHandIcon(),
          ActivityIcon(),
          PersonIcon(),
          BookmarkIcon(),
        ],
        indexRoutes: const {
          0: "send-request/",
          1: "offers/",
          2: "active-dates/",
          3: "profile/",
          4: "bookmarks/",
        },
      ),
    );
  }
}
