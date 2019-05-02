## time_ago_provider
A Library that takes a time stamp value and returns an interval String of the time that passed between the given time stamp to the present. E.g.("7 minutes ago" ).

## Usage
Easy Lazy!
Feed it timestamp, produces you time ago.

```dart
import 'package:time_ago_provider/time_ago_provider.dart';

void main()
{
  //Normal Usage
  //- Get the current time stamp
  int timeStamp = DateTime.now().millisecondsSinceEpoch;
  //- getTimeAgo(int timeStamp) returns a String " X minutes/hours/days/months/years ago ...
  String timeAgo = TimeAgo.getTimeAgo(timeStamp);
  print("Posted $timeAgo"); // Posted just now

  //With Language DEFAULT = English
  int germanTimeStamp = DateTime.now().millisecondsSinceEpoch;
  String germanTimeAgo = TimeAgo.getTimeAgo(germanTimeStamp, language: Language.GERMAN);
  print("Gepostet $germanTimeAgo");
}
```


## Methods
|Function|Parameter|Description|Return|
|--|--|--|--|
|getTimeAgo|`int` timeStamp|Returns an interval String of the time that passed between the given time stamp to the present|`String` timeAgo|


## Supported Languages
- [x] ENGLISH
- [x] ARABIC
- [x] GERMAN
- [x] SPANISH
- [x] CHINESE
- [x] RUSSIAN
- [x] PORTUGUESE
- [x] JAPANESE
- [x] HINDI
- [x] FRENCH


## Installing
[Package](https://pub.dartlang.org/packages/time_ago_provider)

## Features and bugs
If you face any problems feel free to open an issue at the [issue tracker][tracker]. If you feel the library is missing a feature, please raise a ticket on Github. Pull request are also welcome.

[tracker]: https://github.com/BaderEddineOuaich/time_ago_provider/issues

