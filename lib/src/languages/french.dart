import 'language.dart';

class French implements Language {
  @override
  bool shortForm;

  French({this.shortForm = false});

  @override
  String prefixAgo() => 'il y a';
  @override
  String prefixFromNow() => "d'ici";
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) =>
      shortForm ? '< 1 min' : "moins d'une minute";
  @override
  String aboutAMinute(int minutes) =>
      shortForm ? '~1 min' : 'environ une minute';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes mins' : 'environ $minutes minutes';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~1 hr' : 'environ une heure';
  @override
  String hours(int hours) => shortForm ? '$hours hrs' : '$hours heures';
  @override
  String aDay(int hours) => shortForm ? '1 jr' : 'environ un jour';
  @override
  String days(int days) => shortForm ? '$days jrs' : 'environ $days jours';
  @override
  String aboutAMonth(int days) => shortForm ? '1 mois' : 'environ un mois';
  @override
  String months(int months) =>
      shortForm ? '$months mois' : 'environ $months mois';
  @override
  String aboutAYear(int year) => shortForm ? '~1 an' : 'environ un an';
  @override
  String years(int years) => shortForm ? '$years ans' : 'environ $years ans';
  @override
  String delimiter() => ' ';
}
