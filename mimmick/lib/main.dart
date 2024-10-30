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
      home: const Home(),
      theme: ThemeData(
        colorScheme: ColorSchemes.lightBlue(),
        radius: 0.5,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
