import 'language.dart';

class Norwegian implements Language {
  @override
  bool shortForm;

  Norwegian({this.shortForm = false});

  @override
  String seconds(int seconds) =>
      shortForm ? '$seconds sek' : '$seconds sekunder';
  @override
  String aboutASecond(int seconds) => shortForm ? '1 sek' : '1 sekund';
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : 'siden';
  @override
  String suffixFromNow() => shortForm ? '' : 'fra nå';
  @override
  String lessThanOneMinute(int seconds) => shortForm ? 'nå' : 'akkurat nå';
  @override
  String aboutAMinute(int minutes) => shortForm ? '1 min' : 'ett minutt';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes min' : '$minutes minutter';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~1 tim' : 'for en time siden';
  @override
  String hours(int hours) => shortForm ? '$hours tim' : '$hours timer';
  @override
  String aDay(int hours) => shortForm ? '~1 dag' : 'en dag';
  @override
  String days(int days) => shortForm ? '$days d' : '$days dager';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 mån' : 'cirka en måned';
  @override
  String months(int months) => shortForm ? '$months mån' : '$months måneder';
  @override
  String aboutAYear(int year) => shortForm ? '~1 år' : 'cirka ett år';
  @override
  String years(int years) => shortForm ? '$years år' : '$years år';
  @override
  String delimiter() => ' ';
}
