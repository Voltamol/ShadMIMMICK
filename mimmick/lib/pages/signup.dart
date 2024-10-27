import 'package:lottie/lottie.dart';
import 'package:mimmick/components/images/logo.dart';
import 'package:mimmick/components/text/headings.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double horizontalPadding = 20;
    return Scaffold(
        child: Container(
      //color: Colors.gray.withAlpha(30),
      color: Colors.blue.withAlpha(200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PageTitle(text: "Cimas Assist"),
          SubTitle(text: "Your Personal Healthcare Assistant"),
          const SizedBox(
            height: 10,
          ),
          //Logo(source: "assets/images/logo.png", sideLength: 200),
          // const Icon(
          //   Icons.person_2_outlined,
          //   size: 112,
          //   color: Colors.white,
          // ),
          SizedBox(
            height: 150,
            child: Lottie.network(
                "https://lottie.host/31358cf4-7a7e-44dd-bfa6-0f2006b12589/liZ8hdgH92.json"),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              children: [
                SubTitle(text: "User Name"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 8),
            child: TextField(
              leading: const Icon(Icons.person_3_outlined),
              filled: true,
              placeholder: 'John Doe',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              children: [
                SubTitle(text: "Medical aid Number"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 8),
            child: TextField(
              filled: true,
              leading: const Icon(Icons.medical_information_outlined),
              placeholder: '112-994-327-C8#',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          PrimaryButton(
            onPressed: () {},
            child: SizedBox(
              width: 340,
              height: 30,
              child: Center(
                child: const SubTitle(text: "Sign Up"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SubTitle(text: "forgot password ?"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    ));
  }
}
