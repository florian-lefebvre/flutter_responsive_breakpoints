# flutter_responsive_breakpoints

Made by [Florian LEFEBVRE](https://github.com/florian-lefebvre).

This package provides breakpoints to help achieve responsive designs.

## Installation

Run the following command:

```bash
$ flutter pub add flutter_responsive_breakpoints
```

## Documentation

### Breakpoints

| Breakpoint | Minimum width |
| ---------- | ------------- |
| sm         | 640px         |
| md         | 768px         |
| lg         | 1024px        |
| xl         | 1280px        |
| xxl        | 1536px        |

### How to use it

#### Import the package

```dart
import 'package:flutter_responsive_breakpoints/flutter_responsive_breakpoints.dart';
```

#### Wrap MaterialApp with Responsive widget

```dart
Responsive(builder: (context) => MaterialApp())
```

#### Use the function anywhere (after importing the package)

```dart
responsive<Color>(def: Colors.red, sm: Colors.blue, xl: Colors.green)
```

- `def` is required
- all breakpoints are optional 

It can be any type: `int`, `Widget`, etc...

If you're using the function a lot, you can use `r<T>()` instead like so:

```dart
r<Color>(def: Colors.red, sm: Colors.blue, xl: Colors.green)
```

## Acknowledgements

- [Tailwind CSS breakpoints](https://tailwindcss.com/docs/responsive-design)
- [Sizer](https://pub.dev/packages/sizer)

## Issue and feedback

If you have any suggestion for including a feature or if something doesn't work, feel free to open a Github [issue](https://github.com/florian-lefebvre/flutter_responsive_breakpoints/issues) for us to have a discussion on it.