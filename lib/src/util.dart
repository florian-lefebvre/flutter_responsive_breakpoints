part of flutter_responsive_breakpoints;

enum _PlatformType { mobile, web, desktop }

class _ResponsiveUtil {
  _ResponsiveUtil._();

  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late double width;
  static late _PlatformType platformType;

  static void setplatformType() {
    if ((defaultTargetPlatform == TargetPlatform.iOS) || (defaultTargetPlatform == TargetPlatform.android)) {
      platformType = _PlatformType.mobile;
    } else if ((defaultTargetPlatform == TargetPlatform.linux) ||
        (defaultTargetPlatform == TargetPlatform.macOS) ||
        (defaultTargetPlatform == TargetPlatform.windows)) {
      platformType = _PlatformType.desktop;
    } else {
      platformType = _PlatformType.web;
    }
  }

  static void setScreenSize(BoxConstraints constraints, Orientation currentOrientation) {
    boxConstraints = constraints;
    orientation = currentOrientation;
    setplatformType();

    switch (platformType) {
      case _PlatformType.mobile:
        width = orientation == Orientation.portrait ? boxConstraints.maxWidth : boxConstraints.maxHeight;
        break;
      case _PlatformType.desktop:
        width = boxConstraints.maxWidth;
        break;
      case _PlatformType.web:
        width = boxConstraints.maxWidth;
        break;
    }
  }
}
