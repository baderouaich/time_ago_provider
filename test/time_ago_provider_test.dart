import 'dart:async';
import 'package:test/test.dart';
import 'package:time_ago_provider/time_ago_provider.dart';

void main()
{
  test("TimeAgo", ()
  {
    int timeStamp = DateTime.now().millisecondsSinceEpoch;
    Timer(Duration(minutes: 1),(){
      String timeAgo = TimeAgo.getTimeAgo(timeStamp);
      print("it's been $timeAgo"); //output: it's been a minute ago
    });
  });
}
