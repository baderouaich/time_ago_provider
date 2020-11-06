import 'language.dart';

class Portuguese implements Language {
  @override
  bool shortForm;

  Portuguese({this.shortForm = false});

  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : 'atrás';
  @override
  String suffixFromNow() => shortForm ? '' : 'desde';
  @override
  String lessThanOneMinute(int seconds) =>
      shortForm ? 'agora' : 'segundos atrás';
  @override
  String aboutAMinute(int minutes) =>
      shortForm ? '1 min' : 'menos de um minuto';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes min' : '$minutes minutos';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~1 h' : 'em torno de 1 hora';
  @override
  String hours(int hours) => shortForm ? '$hours h' : '$hours horas';
  @override
  String aDay(int hours) => shortForm ? '~1 d' : 'hoje';
  @override
  String days(int days) => shortForm ? '$days d' : '$days dias';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 m' : 'em torno de 1 mês';
  @override
  String months(int months) => shortForm ? '$months m' : '$months meses';
  @override
  String aboutAYear(int year) => shortForm ? '~1 a' : 'em torno de 1 ano';
  @override
  String years(int years) => shortForm ? '$years a' : '$years anos';
  @override
  String delimiter() => ' ';
}
