import 'package:time_ago_provider/time_ago_provider.dart';

void main()
{
  //Normal Usage
  int myTimeStamp = DateTime.now().millisecondsSinceEpoch; // Get the current time stamp
  print(TimeAgo.getTimeAgo(timeStamp: myTimeStamp)); //getTimeAgo(int timeStamp) returns a String " X minutes/hours/days/months/years ago ..."

  //With Language
  int mySecondTimeStamp = DateTime.now().millisecondsSinceEpoch;
  print(TimeAgo.getTimeAgo(timeStamp: mySecondTimeStamp, language: Language.GERMAN)); //Default Language ENGLISH
}
