import 'language.dart';

class German implements Language {
  @override
  bool shortForm;

  German({this.shortForm = false});

  @override
  String aboutASecond(int seconds) => 'etwa eine Sekunde';
  @override
  String seconds(int seconds) =>
      shortForm ? '$seconds Sek' : '$seconds Sekunden';

  @override
  String prefixAgo() => shortForm ? '' : 'vor';
  @override
  String prefixFromNow() => shortForm ? '' : 'in';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) =>
      shortForm ? 'Jetzt' : 'weniger als einer Minute';
  @override
  String aboutAMinute(int minutes) => shortForm ? '1 Min.' : 'einer Minute';
  @override
  String minutes(int minutes) =>
      shortForm ? '$minutes Min.' : '$minutes Minuten';
  @override
  String aboutAnHour(int minutes) => shortForm ? '~1 Std.' : '~1 Stunde';
  @override
  String hours(int hours) => shortForm ? '$hours Std.' : '$hours Stunden';
  @override
  String aDay(int hours) => shortForm ? '~1 Tg.' : '~1 Tag';
  @override
  String days(int days) => shortForm ? '$days Tg.' : '$days Tagen';
  @override
  String aboutAMonth(int days) => shortForm ? '~1 Mo.' : '~1 Monat';
  @override
  String months(int months) => shortForm ? '$months Mo.' : '$months Monaten';
  @override
  String aboutAYear(int year) => shortForm ? '~1 Jr.' : '~1 Jahr';
  @override
  String years(int years) => shortForm ? '$years Jr.' : '$years Jahren';
  @override
  String delimiter() => ' ';
}
