import 'language.dart';

class Turkish implements Language {
  @override
  bool shortForm;

  Turkish({this.shortForm = false});

  @override
  String aboutASecond(int seconds) => 'yaklaşık bir saniye';
  @override
  String seconds(int seconds) => '$seconds saniye';

  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm ? '' : 'önce';
  @override
  String suffixFromNow() => shortForm ? '' : 'şu andan itibaren';
  @override
  String lessThanOneMinute(int seconds) =>
      shortForm ? 'şimdi' : 'birkaç saniye';
  @override
  String aboutAMinute(int minutes) => shortForm ? '1 dk' : 'bir dakika';
  @override
  String minutes(int minutes) => shortForm ? '$minutes dk' : '$minutes dakika';
  @override
  String aboutAnHour(int minutes) =>
      shortForm ? '~1 saat' : 'yaklaşık bir saat';
  @override
  String hours(int hours) => '$hours saat';
  @override
  String aDay(int hours) => shortForm ? '~1 gün' : 'bir gün';
  @override
  String days(int days) => '$days gün';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 ay' : 'yaklaşık bir ay';
  @override
  String months(int months) => '$months ay';
  @override
  String aboutAYear(int year) => shortForm ? '~1 y' : 'yaklaşık bir yıl';
  @override
  String years(int years) => '$years yıl';
  @override
  String delimiter() => ' ';
}
