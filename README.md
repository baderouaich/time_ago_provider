A Library that takes a time stamp value and returns an interval String of the time that passed between the given time stamp to the present (Now). (e.g. "7 minutes ago" ).

## Usage

Easy Lazy!
Feed her timestamp, produces you time ago.

```dart
import 'package:time_ago_provider/time_ago_provider.dart';

void main()
{
  //Normal Usage
  int myTimeStamp = DateTime.now().millisecondsSinceEpoch; // Get the current time stamp
  String timeAgo = TimeAgo.getTimeAgo(timeStamp: myTimeStamp); //getTimeAgo(int timeStamp) returns a String " X minutes/hours/days/months/years ago ..."
  print("Posted $timeAgo");

  //With Language
  int mySecondTimeStamp = DateTime.now().millisecondsSinceEpoch;
  String germanTimeAgo = TimeAgo.getTimeAgo(timeStamp: mySecondTimeStamp, language: Language.GERMAN); //Default Language ENGLISH
  print("Gepostet $germanTimeAgo");
}
```


## Methods

|Function|Parameter|Description|Return|
|--|--|--|--|
|getTimeAgo|`int` timeStamp|Returns an interval String of the time that passed between the given time stamp to the present (Now)|`String` timeAgo|


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

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/BaderEddineOuaich/time_ago_provider/issues

