
import 'language.dart';

class Spanish implements Language {
  @override
  bool shortForm;

  Spanish({this.shortForm = false});

  @override
  String seconds(int seconds) =>
      shortForm ? '$seconds seg' : '$seconds segundos';
  @override
  String aboutASecond(int seconds) => shortForm ? '1 seg' : '1 segundo';
  @override
  String prefixAgo() => 'hace';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : '';
  @override
  String suffixFromNow() => shortForm ? '' : 'desde ahora';
  @override
  String lessThanOneMinute(int seconds) => shortForm ? 'ahora' : 'un momento';
  @override
  String aboutAMinute(int minutes) => shortForm ? '1 min' : 'un minuto';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes min' : '$minutes minutos';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~1 hr' : 'cerca de una hora';
  @override
  String hours(int hours) => shortForm ? '$hours hrs' : '$hours horas';
  @override
  String aDay(int hours) => shortForm ? '~1 d' : 'un día';
  @override
  String days(int days) => shortForm ? '$days d' : '$days días';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 mes' : 'cerca un mes';
  @override
  String months(int months) => shortForm ? '$months meses' : '$months meses';
  @override
  String aboutAYear(int year) => shortForm ? '~1 año' : 'cerca de una año';
  @override
  String years(int years) => shortForm ? '$years años' : '$years años';
  @override
  String delimiter() => ' ';
}
