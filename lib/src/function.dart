part of flutter_responsive_breakpoints;

class _Breakpoints {
  _Breakpoints._();

  static const double sm = 640;
  static const double md = 768;
  static const double lg = 1024;
  static const double xl = 1280;
  static const double xxl = 1536;
}

class _Responsive<T> {
  final T def;
  final T? sm;
  final T? md;
  final T? lg;
  final T? xl;
  final T? xxl;

  _Responsive(
      {required this.def, this.sm, this.md, this.lg, this.xl, this.xxl});

  T get getSm => sm ?? def;
  T get getMd => md ?? getSm;
  T get getLg => lg ?? getMd;
  T get getXl => xl ?? getLg;
  T get getXxl => xxl ?? getXl;

  T getValue() {
    if (_ResponsiveUtil.width >= _Breakpoints.xxl) {
      return getXxl;
    } else if (_ResponsiveUtil.width >= _Breakpoints.xl) {
      return getXl;
    } else if (_ResponsiveUtil.width >= _Breakpoints.lg) {
      return getLg;
    } else if (_ResponsiveUtil.width >= _Breakpoints.md) {
      return getMd;
    } else if (_ResponsiveUtil.width >= _Breakpoints.sm) {
      return getSm;
    } else {
      return def;
    }
  }
}

/// Get value of type T depending of the current breakpoint.
///
/// [def] is required, all breakpoints are optional and can
/// be ommited. For example, if only [def] and [sm] parameters
/// are provided, the function will return the [sm] value for
/// all larger breakpoints.
///
/// | Breakpoint | Minimum width |
/// | ---------- | ------------- |
/// | sm         | 640px         |
/// | md         | 768px         |
/// | lg         | 1024px        |
/// | xl         | 1280px        |
/// | xxl        | 1536px        |
T responsive<T>({required T def, T? sm, T? md, T? lg, T? xl, T? xxl}) {
  final _Responsive<T> _responsive =
      _Responsive<T>(def: def, sm: sm, md: md, lg: lg, xl: xl, xxl: xxl);
  return _responsive.getValue();
}

/// Same as responsive<T>(...) but faster to type.
///
/// | Breakpoint | Minimum width |
/// | ---------- | ------------- |
/// | sm         | 640px         |
/// | md         | 768px         |
/// | lg         | 1024px        |
/// | xl         | 1280px        |
/// | xxl        | 1536px        |
T r<T>({required T def, T? sm, T? md, T? lg, T? xl, T? xxl}) =>
    responsive<T>(def: def, sm: sm, md: md, lg: lg, xl: xl, xxl: xxl);
