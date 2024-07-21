import 'package:mimmick/components/user_type/select_user_type.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      child: SelectUserType(),
    );
  }
}
