import 'package:mimmick/components/forms/select.dart';
import 'package:mimmick/components/forms/text.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomStepper extends StatelessWidget {
  CustomStepper({super.key});

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
              child: const Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: CustomSelect()),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextArea(
                    placeholder: "describe event",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextArea(
                    placeholder: "venue",
                  ),
                ],
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
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: CustomSelect()),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(child: CustomSelect()),
                      ],
                    ),
                  ],
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
                child: const Column(
                  children: [
                    CustomNumberField(
                      placeholder: "\$:",
                      title: "set your fee",
                    )
                  ],
                ));
          },
        ),
      ],
    );
  }
}
