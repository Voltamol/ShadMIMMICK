import 'package:mimmick/components/forms/select.dart';
import 'package:mimmick/components/forms/text.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class PlusOneStepper extends StatelessWidget {
  PlusOneStepper({
    super.key,
    required this.children1,
    required this.children2,
    required this.children3,
  });
  final List<Widget> children1;
  final List<Widget> children2;
  final List<Widget> children3;
  final StepperController controller = StepperController();

  @override
  Widget build(BuildContext context) {
    return Stepper(
      controller: controller,
      direction: Axis.horizontal,
      steps: [
        Step(
          title: const Text(''),
          contentBuilder: (context) {
            return StepContainer(
              actions: [
                const SecondaryButton(
                  child: Text('Prev'),
                ),
                PrimaryButton(
                    child: const Text('Next'),
                    onPressed: () {
                      controller.nextStep();
                    }),
              ],
              child: Column(
                children: children1
              ),
            );
          },
        ),
        Step(
          title: const Text(''),
          contentBuilder: (context) {
            return StepContainer(
                actions: [
                  SecondaryButton(
                    child: const Text('Prev'),
                    onPressed: () {
                      controller.previousStep();
                    },
                  ),
                  PrimaryButton(
                      child: const Text('Next'),
                      onPressed: () {
                        controller.nextStep();
                      }),
                ],
                child: Column(
                  children: children2
                ));
          },
        ),
        Step(
          title: const Text(''),
          contentBuilder: (context) {
            return StepContainer(
                actions: [
                  SecondaryButton(
                    child: const Text('Prev'),
                    onPressed: () {
                      controller.previousStep();
                    },
                  ),
                  PrimaryButton(
                      child: const Text('Finish'),
                      onPressed: () {
                        controller.nextStep();
                      }),
                ],
                child:Column(
                  children: children3
                ));
          },
        ),
      ],
    );
  }
}
