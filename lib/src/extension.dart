part of flutter_responsive_breakpoints;

extension ResponsiveExtension on num {
  double get vw => this * _ResponsiveUtil.width / 100;
  double get vh => this * _ResponsiveUtil.height / 100;
}
