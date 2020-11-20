import 'language.dart';

class English implements Language {
  @override
  bool shortForm;

  English({this.shortForm = false});

  @override
  String seconds(int seconds) =>
      shortForm ? '$seconds sec' : '$seconds seconds';
  @override
  String aboutASecond(int seconds) => shortForm ? '1 sec' : '1 second';
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : 'ago';
  @override
  String suffixFromNow() => shortForm ? '' : 'from now';
  @override
  String lessThanOneMinute(int seconds) => shortForm ? 'now' : 'a moment';
  @override
  String aboutAMinute(int minutes) => shortForm ? '1 min' : 'a minute';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes min' : '$minutes minutes';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~1 h' : 'about an hour';
  @override
  String hours(int hours) => shortForm ? '$hours h' : '$hours hours';
  @override
  String aDay(int hours) => shortForm ? '~1 d' : 'a day';
  @override
  String days(int days) => shortForm ? '$days d' : '$days days';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 mo' : 'about a month';
  @override
  String months(int months) => shortForm ? '$months mo' : '$months months';
  @override
  String aboutAYear(int year) => shortForm ? '~1 yr' : 'about a year';
  @override
  String years(int years) => shortForm ? '$years yr' : '$years years';
  @override
  String delimiter() => ' ';
}
