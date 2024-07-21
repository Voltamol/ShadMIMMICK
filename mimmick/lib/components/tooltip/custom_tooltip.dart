import 'package:mimmick/components/tooltip/custom_tooltip_container.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      tooltip: const CustomTooltipContainer(),
      child: PrimaryButton(
        onPressed: () {},
        density: ButtonDensity.icon,
        child: const Icon(BootstrapIcons.lightbulb),
      ),
    );
  }
}
