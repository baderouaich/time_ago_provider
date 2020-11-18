import 'language.dart';

class Polish implements Language {
  @override
  bool shortForm;

  Polish({this.shortForm = false});

  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => shortForm ? '' : 'temu';

  @override
  String suffixFromNow() => shortForm ? '' : 'temu';

  @override
  String seconds(int seconds) {
    if (shortForm) {
      return '${seconds}s';
    }

    if (seconds == 1) {
      return '1 sekunda';
    }

    if (seconds > 1 && seconds < 5) {
      return '$seconds sekundy';
    }

    return '$seconds sekund';
  }

  @override
  String aboutASecond(int seconds) => shortForm ? '1s' : 'sekunda';

  @override
  String lessThanOneMinute(int seconds) =>
      shortForm ? 'teraz' : 'mniej niż minutę';

  @override
  String aboutAMinute(int minutes) =>
      shortForm ? '~1 min' : 'około jednej minuty';

  @override
  String minutes(int minutes) {
    if (shortForm) {
      return '$minutes min';
    }

    if (minutes == 1) {
      return '1 minuta';
    }

    if (minutes == 2) {
      return '2 minuty';
    }

    return '$minutes minut';
  }

  @override
  String aboutAnHour(int minutes) => shortForm ? '~1h' : 'około jednej godziny';

  @override
  String hours(int hours) {
    if (shortForm) {
      return '${hours}h';
    }

    if (hours == 1) {
      return '1 godzina';
    }

    if (hours > 1 && hours < 5) {
      return '2 godziny';
    }

    return '$hours godzin';
  }

  @override
  String aDay(int hours) => shortForm ? '~1 dzień' : 'około jednego dnia';

  @override
  String days(int days) {
    if (shortForm) {
      return '${days}d';
    }

    if (days == 1) {
      return '1 dzień';
    }

    return '$days dni';
  }

  @override
  String aboutAMonth(int days) => shortForm ? '~1 m' : 'około jednego miesiąca';

  @override
  String months(int months) {
    if (shortForm) {
      return '$months mies.';
    }

    if (months == 1) {
      return '1 miesiąc';
    }

    if (months > 1 && months < 5) {
      return '$months miesiące';
    }

    return '$months miesiący';
  }

  @override
  String aboutAYear(int year) => shortForm ? '~1 rok' : 'około jednego roku';

  @override
  String years(int years) {
    if (shortForm) {
      return '${years}l.';
    }

    if (years == 1) {
      return '1 rok';
    }

    if (years > 1 && years < 5) {
      return '$years lata';
    }

    return '$years lat';
  }

  @override
  String delimiter() => ' ';
}
