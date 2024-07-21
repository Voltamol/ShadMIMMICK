import 'package:mimmick/components/custom_tile/more_info.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      child: Center(
        child: SizedBox(
          width: 390,
          child: CustomTile(
            title: "JACKSON SCOTT",
            content: "Balance:\$99.56",
          ),
        ),
      ),
    );
  }
}
