## time_ago_provider
library for generating fuzzy timestamp e.g("9 minutes ago")

```dart
import 'package:time_ago_provider/time_ago_provider.dart' as timeAgo;

void main() {
  /// Get the timestamp
  final nineMinutesElapsed = DateTime.now().subtract(Duration(minutes: 9));

  /// Format & get elapsed String
  print(timeAgo.format(nineMinutesElapsed)); // 9 minutes ago
  print(timeAgo.format(nineMinutesElapsed, locale: 'en_short')); // 9 min

  /// Adding new locales
  timeAgo.setLocale('de', timeAgo.German());
  timeAgo.setLocale('de_short', timeAgo.German(shortForm: true));
  print(timeAgo.format(nineMinutesElapsed, locale: 'de')); // vor 9 Minuten
  print(timeAgo.format(nineMinutesElapsed, locale: 'de_short')); // 9 Min.
}

```

## Supported Languages
- [x] ENGLISH
- [x] GERMAN
- [x] POLISH
- [x] FRENCH
- [x] ARABIC
- [x] TURKISH
- More will be added

## Installing
[Package](https://pub.dartlang.org/packages/time_ago_provider)


## Contributors ✨
Thanks goes to these wonderful people!<br>
<table>
  <tr>
    <a href="https://github.com/l7ssha">
      <img width="50" height="50" src="https://github.com/l7ssha.png">
    </a>
  </tr>
  <tr>
    <a href="https://github.com/veneno261">
      <img width="50" height="50" src="https://github.com/veneno261.png">
    </a>
  </tr>
  <tr>
    <a href="https://github.com/hacioguz">
      <img width="50" height="50" src="https://github.com/hacioguz.png">
    </a>
  </tr>
  <tr>
    <a href="https://github.com/bgoktugozdemir">
      <img width="50" height="50" src="https://github.com/bgoktugozdemir">
    </a>
  </tr>

</table>



## Features and bugs
If you face any problems feel free to open an issue at the [issue tracker][tracker]. If you feel the library is missing a feature, please raise a ticket on Github. Pull request are also welcome.

[tracker]: https://github.com/BaderEddineOuaich/time_ago_provider/issues

