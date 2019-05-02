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
