import 'package:mimmick/components/user_type/headings.dart';
import 'package:mimmick/components/user_type/page_redirect.dart';
import 'package:mimmick/components/user_type/user_type.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
class SelectUserType extends StatelessWidget {
  const SelectUserType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading1(),
                  SizedBox(
                    height: 40,
                  ),
                  UserType(),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          BShape(),
        ]);
  }
}
