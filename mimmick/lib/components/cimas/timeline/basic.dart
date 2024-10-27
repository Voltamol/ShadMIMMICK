import 'package:mimmick/components/cimas/tiles/cart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class BasicTimeLine extends StatelessWidget {
  const BasicTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> steps = [
      {
        'title': 'Create a project',
        'content': [
          'Create a new project in the project manager.',
          'Add the required files to the project.',
        ],
      },
      {
        'title': 'Add dependencies',
        'content': [
          'Add the required dependencies to the project.',
        ],
      },
      {
        'title': 'Run the project',
        'content': [
          'Run the project in the project manager.',
        ],
      },
    ];

    return Steps(
      children: steps.map((step) {
        return StepItem(
          title: Text(step['title']),
          content: (step['content'] as List<String>)
              .map((text) => Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: const CartTile(
                      title: "Ibuprofen",
                      subtitle: "14 days",
                    ),
                  ))
              .toList(),
        );
      }).toList(),
    );
  }
}
