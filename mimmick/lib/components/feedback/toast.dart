import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomToast extends StatelessWidget {
  const CustomToast({super.key, required this.title, required this.action});
  final String title;
  final VoidCallback action;
  @override
  Widget buildToast(BuildContext context, ToastOverlay overlay) {
    return SurfaceCard(
      child: Basic(
        title: const Text('Event has been created'),
        subtitle: const Text('Sunday, July 07, 2024 at 12:00 PM'),
        trailing: PrimaryButton(
            size: ButtonSize.small,
            onPressed: () {
              overlay.close();
            },
            child: const Text('Undo')),
        trailingAlignment: Alignment.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onPressed: () {
        action();
        showToast(
          context: context,
          builder: buildToast,
          location: ToastLocation.bottomLeft,
        );
      },
      child: Text(title),
    );
  }
}
