import 'package:mimmick/components/cimas/timeline/basic.dart';
import 'package:mimmick/components/images/logo.dart';
import 'package:mimmick/components/layouts/utils/calendar.dart';
import 'package:mimmick/components/plus_one/forms/file-upload/upload_screenshot.dart';
import 'package:mimmick/components/plus_one/forms/range-select.dart';
import 'package:mimmick/components/plus_one/forms/text.dart';
import 'package:mimmick/components/plus_one/surfaces/dialog.dart';
import 'package:mimmick/components/text/headings.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Container(
        color: Colors.gray.withAlpha(30),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              CustomDialog(
                children: [Center(child: CustomCalendar())],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
