
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  final StepperController controller = StepperController();

@override
Widget build(BuildContext context) {
  return Stepper(
    controller: controller,
    direction: Axis.horizontal,
    steps: [
      Step(
        title: const Text('Step 1'),
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
            child: const NumberedContainer(
              index: 1,
              height: 200,
            ),
          );
        },
      ),
      Step(
        title: const Text('Step 2'),
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
            child: const NumberedContainer(
              index: 2,
              height: 200,
            ),
          );
        },
      ),
      Step(
        title: const Text('Step 3'),
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
            child: const NumberedContainer(
              index: 3,
              height: 200,
            ),
          );
        },
      ),
    ],
  );
}

}