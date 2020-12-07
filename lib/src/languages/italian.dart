import 'language.dart';

class Italian implements Language {
  @override
  bool shortForm;

  Italian({this.shortForm = false});

  @override
  String seconds(int seconds) => shortForm ? '$seconds sec' : '$seconds secondi';
  @override
  String aboutASecond(int seconds) => shortForm ? '1 sec' : '1 secondo';
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : 'fa';
  @override
  String suffixFromNow() => shortForm ? '' : 'da ora';
  @override
  String lessThanOneMinute(int seconds) => shortForm ? 'ora' : 'un momento';
  @override
  String aboutAMinute(int minutes) => shortForm ? '1 min' : 'un minuto';
  @override
  String minutes(int minutes) => shortForm ? '$minutes min' : '$minutes minuti';
  @override
  String aboutAnHour(int minutes) => shortForm ? 'ca. 1 ora' : 'circa un\'ora';
  @override
  String hours(int hours) => shortForm ? '$hours ore' : '$hours ore';
  @override
  String aDay(int hours) => shortForm ? '1 g' : 'un giorno';
  @override
  String days(int days) => shortForm ? '$days gg' : '$days giorni';
  @override
  String aboutAMonth(int days) => shortForm ? 'ca. 1 m' : 'circa un mese';
  @override
  String months(int months) => shortForm ? '$months mm' : '$months mesi';
  @override
  String aboutAYear(int year) => shortForm ? 'ca. 1 a' : 'circa un anno';
  @override
  String years(int years) => shortForm ? '$years aa' : '$years anni';
  @override
  String delimiter() => ' ';
}
