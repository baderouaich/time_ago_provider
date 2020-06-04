import 'language.dart';

/// for file formatting, some return values were
/// intended to be with an if else instead of => to be clear.
class Arabic implements Language {
  @override
  bool shortForm;
  Arabic({bool shortForm = false}) {
    this.shortForm = shortForm;
  }

  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => shortForm ? '' : 'من الآن';
  @override
  String lessThanOneMinute(int seconds) {
    if (shortForm)
      return 'الأن';
    else
      return 'قبل ثواني';
  }

  @override
  String aboutAMinute(int minutes) {
    if (shortForm)
      return 'دقيقة واحدة';
    else
      return 'قبل دقيقة';
  }

  @override
  String minutes(int minutes) {
    if (shortForm) return '$minutes د';

    if (minutes == 1)
      return 'منذ دقيقة';
    else if (minutes == 2)
      return 'منذ دقيقتين';
    else if (minutes > 2 && minutes < 11)
      return ' منذ $minutes دقائق ';
    else if (minutes > 10) return ' منذ $minutes دقيقة ';
    return ' منذ $minutes دقائق ';
  }

  @override
  String aboutAnHour(int minutes) {
    if (shortForm)
      return '~1 س';
    else
      return 'قبل حوالي الساعة';
  }

  @override
  String hours(int hours) {
    if (shortForm) return '$hours س';

    if (hours == 1)
      return 'منذ ساعة';
    else if (hours == 2)
      return 'منذ ساعتين';
    else if (hours > 2 && hours < 11)
      return ' منذ $hours ساعات ';
    else if (hours > 10) return ' منذ $hours ساعة ';

    return ' منذ $hours ساعات ';
  }

  @override
  String aDay(int hours) {
    if (shortForm)
      return '~1 ي';
    else
      return 'قبل يوم';
  }

  @override
  String days(int days) {
    if (shortForm) return '$days ي';

    if (days == 1)
      return 'منذ يوم';
    else if (days == 2)
      return 'منذ يومين';
    else if (days > 2 && days < 11)
      return ' منذ $days ايام ';
    else if (days > 10) return ' منذ $days يوم ';

    return ' منذ $days ايام ';
  }

  @override
  String aboutAMonth(int days) {
    if (shortForm)
      return '~1 ش';
    else
      return 'قبل حوالي شهر';
  }

  @override
  String months(int months) {
    if (shortForm) return '$months ش';

    if (months == 1)
      return 'منذ شهر';
    else if (months == 2)
      return 'منذ شهرين';
    else if (months > 2 && months < 11)
      return ' منذ $months اشهر ';
    else if (months > 10) return ' منذ $months شهر ';

    return ' منذ $months شهور ';
  }

  @override
  String aboutAYear(int year) {
    if (shortForm)
      return '~1 سنة';
    else
      return 'قبل سنة';
  }

  @override
  String years(int years) {
    if (shortForm) return '$years سنة';

    if (years == 1)
      return 'منذ سنة';
    else if (years == 2)
      return 'منذ سنتين';
    else if (years > 2 && years < 11)
      return ' منذ $years سنوات ';
    else if (years > 10) return ' منذ $years سنة ';

    return ' منذ $years سنوات ';
  }

  @override
  String delimiter() => ' ';
}
