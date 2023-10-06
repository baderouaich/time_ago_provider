import 'language.dart';

class Persian implements Language {
  @override
  bool shortForm;

  English({this.shortForm = false});

  @override
  String seconds(int seconds) =>
      shortForm ? '$seconds sec' : '$seconds ثانیه';
  @override
  String aboutASecond(int seconds) => shortForm ? '۱ ث' : '۱ ثانیه';
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : 'پیش';
  @override
  String suffixFromNow() => shortForm ? '' : 'از آلان';
  @override
  String lessThanOneMinute(int seconds) => shortForm ? 'الان' : 'چند لحظه';
  @override
  String aboutAMinute(int minutes) => shortForm ? '۱ دقیقه' : 'دقیقه';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes دقیقه' : '$minutes دقیقه';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~۱ س' : 'حدود یک ساعت';
  @override
  String hours(int hours) => shortForm ? '$hours س' : '$hours ساعت';
  @override
  String aDay(int hours) => shortForm ? '~1 ر' : 'یک روز';
  @override
  String days(int days) => shortForm ? '$days ر' : '$days روز';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 م' : 'یک ماه';
  @override
  String months(int months) => shortForm ? '$months م' : '$months ماه';
  @override
  String aboutAYear(int year) => shortForm ? '~۱ سال' : 'حدود یک سال';
  @override
  String years(int years) => shortForm ? '$years سال' : '$years سال';
  @override
  String delimiter() => ' ';
}
