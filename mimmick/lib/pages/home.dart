import 'package:flutter/foundation.dart';
import 'package:mimmick/components/feedback/circular-progress.dart';
import 'package:mimmick/components/feedback/skeleton.dart';
import 'package:mimmick/components/feedback/toast.dart';
import 'package:mimmick/components/layouts/carousel.dart';
import 'package:mimmick/components/plus_one/forms/stepper.dart';
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: CustomSkeleton(
                    title: "Custom Skeleton",
                    content: Text(
                        "Lorem ipsum dolo sit amet, consectetor adipisizing elit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
