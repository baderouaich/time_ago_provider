## time_ago_provider
library for generating fuzzy timestamp e.g("9 minutes ago")

```dart
import 'package:time_ago_provider/time_ago_provider.dart' as timeAgo;

void main()
{
  //Normal Usage
  //- Get the timestamp
  DateTime nineMinutesElapsed = DateTime.now().subtract(Duration(minutes: 9));
  //- Format & get elapsed String
  print(timeAgo.format(nineMinutesElapsed)); // 9 minutes ago
  print(timeAgo.format(nineMinutesElapsed, locale: 'en_short')); // 9 min
}
```

## Supported Languages
- [x] ENGLISH
- [x] GERMAN
- [x] FRENCH
- [x] ARABIC
- More will be added

## Installing
[Package](https://pub.dartlang.org/packages/time_ago_provider)

## Features and bugs
If you face any problems feel free to open an issue at the [issue tracker][tracker]. If you feel the library is missing a feature, please raise a ticket on Github. Pull request are also welcome.

[tracker]: https://github.com/BaderEddineOuaich/time_ago_provider/issues

