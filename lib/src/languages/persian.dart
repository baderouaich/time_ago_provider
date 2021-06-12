import 'language.dart';

class Persian implements Language {
  @override
  bool shortForm;

  Persian({this.shortForm = false});

  @override
  String seconds(int seconds) =>
      shortForm ? '$seconds ثانیه' : '$seconds ثانیه';
  @override
  String aboutASecond(int seconds) => shortForm ? '۱ ث' : '۱ ثانیه';
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : 'پیش';
  @override
  String suffixFromNow() => 'بعد';
  @override
  String lessThanOneMinute(int seconds) => 'چند لحظه';
  @override
  String aboutAMinute(int minutes) => shortForm ? '۱ د' : '۱ دقیقه';
  @override
  String minutes(int minutes) => shortForm ? '$minutes د' : '$minutes دقیقه';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~۱ س' : 'نزدیک به یک‌ساعت';
  @override
  String hours(int hours) => shortForm ? '$hours س' : '$hours ساعت';
  @override
  String aDay(int hours) => shortForm ? '~1 روز' : 'یک روز';
  @override
  String days(int days) => shortForm ? '$days ر' : '$days روز';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 م' : 'یک ماه';
  @override
  String months(int months) => shortForm ? '$months م' : '$months ماه';
  @override
  String aboutAYear(int year) => shortForm ? '~۱ سال' : 'یک سال';
  @override
  String years(int years) => shortForm ? '$years سال' : '$years سال';
  @override
  String delimiter() => ' ';
}
