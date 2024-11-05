import 'package:mimmick/components/plus_one/pages/user/request.dart';
import 'package:mimmick/components/plus_one/pages/user/splash-screen.dart';
import 'package:mimmick/components/plus_one/pages/user/draft-request.dart';
import 'package:mimmick/components/plus_one/pages/user/offers.dart';
import 'package:mimmick/components/plus_one/pages/user/profile.dart';
import 'package:mimmick/components/plus_one/pages/user/send_request.dart';
import 'package:mimmick/pages/home.dart';
import 'package:mimmick/pages/signup.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ShadcnApp(
      title: 'My App',
      home: const ClientRequest(),
      theme: ThemeData(
        colorScheme: ColorSchemes.lightRose(),
        
        radius: 0.5,
      ),
      routes: {
        'home/': (context) => const Home(),
        'signup/': (context) => const Register(),
        'offers/': (context) => const OffersPage(),
        'send-request/': (context) => const SendRequestPage(),
        "drafts/": (context) => const DraftRequest(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
