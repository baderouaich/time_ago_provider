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
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : 'sen';
  @override
  String suffixFromNow() => shortForm ? '' : 'från nu';
  @override
  String lessThanOneMinute(int seconds) => shortForm ? 'nu' : 'precis';
  @override
  String aboutAMinute(int minutes) => shortForm ? '1 min' : 'en minut';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes min' : '$minutes minuter';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~1 tim' : 'ungefär en timme';
  @override
  String hours(int hours) => shortForm ? '$hours tim' : '$hours timmar';
  @override
  String aDay(int hours) => shortForm ? '~1 dag' : 'en dag';
  @override
  String days(int days) => shortForm ? '$days d' : '$days dagar';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 mån' : 'ungefär en månad';
  @override
  String months(int months) => shortForm ? '$months mån' : '$months månader';
  @override
  String aboutAYear(int year) => shortForm ? '~1 år' : 'ungefär ett år';
  @override
  String years(int years) => shortForm ? '$years år' : '$years år';
  @override
  String delimiter() => ' ';
}
