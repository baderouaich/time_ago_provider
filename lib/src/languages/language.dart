abstract class Language {
  /// flag for short form e.g(1 min) | long form e.g(1 minute ago)
  bool get shortForm;

  String prefixAgo();
  String prefixFromNow();

  String suffixAgo();
  String suffixFromNow();

  String aboutASecond(int seconds);
  String seconds(int seconds);

  String lessThanOneMinute(int seconds);
  String aboutAMinute(int minutes);
  String minutes(int minutes);

  String aboutAnHour(int minutes);
  String hours(int hours);

  String aDay(int hours);
  String days(int days);

  String aboutAMonth(int days);
  String months(int months);

  String aboutAYear(int year);
  String years(int years);

  String delimiter() => ' ';
}
