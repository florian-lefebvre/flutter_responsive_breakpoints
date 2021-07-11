part of flutter_responsive_breakpoints;

typedef _ResponsiveBuild = Widget Function(BuildContext context);

/// A widget that gets the device's details like orientation and constraints
///
/// Usage: Wrap MaterialApp with this widget
class Responsive extends StatelessWidget {
  final _ResponsiveBuild builder;

  const Responsive({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        _ResponsiveUtil.setScreenSize(constraints, orientation);
        return builder(context);
      });
    });
  }
}
