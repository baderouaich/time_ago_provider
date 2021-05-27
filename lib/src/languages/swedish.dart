import 'language.dart';

class Swedish implements Language {
  @override
  bool shortForm;

  Swedish({this.shortForm = false});

  @override
  String seconds(int seconds) =>
      shortForm ? '$seconds sek' : '$seconds sekunder';
  @override
  String aboutASecond(int seconds) => shortForm ? '1 sek' : '1 sekund';
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'om';
  @override
  String suffixAgo() => shortForm ? '' : 'sen';
  @override
  String suffixFromNow() => shortForm ? '' : '';
  @override
  String lessThanOneMinute(int seconds) =>
      shortForm ? 'nu' : 'mindre än 1 minut';
  @override
  String aboutAMinute(int minutes) => shortForm ? '1 min' : 'för en minut';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes min' : '$minutes minuter';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~1 tim' : 'för en timme';
  @override
  String hours(int hours) => shortForm ? '$hours tim' : '$hours timmar';
  @override
  String aDay(int hours) => shortForm ? '~1 dag' : 'en dag';
  @override
  String days(int days) => shortForm ? '$days d' : '$days dagar';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 mån' : 'för en månad';
  @override
  String months(int months) => shortForm ? '$months mån' : '$months månader';
  @override
  String aboutAYear(int year) => shortForm ? '~1 år' : 'för ett år';
  @override
  String years(int years) => shortForm ? '$years år' : '$years år';
  @override
  String delimiter() => ' ';
}
