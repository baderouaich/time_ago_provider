import 'language.dart';

/// Note: Some arabic ternary operators may look reversed due file formatting
class Arabic implements Language {
  @override
  bool shortForm;

  Arabic({this.shortForm = false});

  @override
  String aboutASecond(int seconds) => '';
  @override
  String seconds(int seconds) => '';

  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => shortForm ? '' : 'من الآن';
  @override
  String lessThanOneMinute(int seconds) => shortForm ? 'الأن' : 'قبل ثواني';
  @override
  String aboutAMinute(int minutes) => shortForm ? 'دقيقة واحدة' : 'قبل دقيقة';
  @override
  String minutes(int minutes) {
    if (shortForm) {
      return '$minutes د';
    }
    if (minutes == 1) {
      return 'منذ دقيقة';
    } else if (minutes == 2) {
      return 'منذ دقيقتين';
    } else if (minutes > 2 && minutes < 11) {
      return ' منذ $minutes دقائق ';
    } else if (minutes > 10) {
      return ' منذ $minutes دقيقة ';
    }
    return ' منذ $minutes دقائق ';
  }

  @override
  String aboutAnHour(int minutes) => shortForm ? 'س ~1' : 'قبل حوالي الساعة';

  @override
  String hours(int hours) {
    if (shortForm) {
      return '$hours س';
    }

    if (hours == 1) {
      return 'منذ ساعة';
    } else if (hours == 2) {
      return 'منذ ساعتين';
    } else if (hours > 2 && hours < 11) {
      return ' منذ $hours ساعات ';
    } else if (hours > 10) {
      return ' منذ $hours ساعة ';
    }

    return ' منذ $hours ساعات ';
  }

  @override
  String aDay(int hours) => shortForm ? 'ي ~1' : 'قبل يوم';

  @override
  String days(int days) {
    if (shortForm) {
      return '$days ي';
    }

    if (days == 1) {
      return 'منذ يوم';
    } else if (days == 2) {
      return 'منذ يومين';
    } else if (days > 2 && days < 11) {
      return ' منذ $days ايام ';
    } else if (days > 10) {
      return ' منذ $days يوم ';
    }

    return ' منذ $days ايام ';
  }

  @override
  String aboutAMonth(int days) => shortForm ? 'ش ~1' : 'قبل حوالي شهر';

  @override
  String months(int months) {
    if (shortForm) {
      return '$months ش';
    }
    if (months == 1) {
      return 'منذ شهر';
    } else if (months == 2) {
      return 'منذ شهرين';
    } else if (months > 2 && months < 11) {
      return ' منذ $months اشهر ';
    } else if (months > 10) {
      return ' منذ $months شهر ';
    }

    return ' منذ $months شهور ';
  }

  @override
  String aboutAYear(int year) => shortForm ? 'سنة ~1' : 'قبل سنة';

  @override
  String years(int years) {
    if (shortForm) {
      return '$years سنة';
    }
    if (years == 1) {
      return 'منذ سنة';
    } else if (years == 2) {
      return 'منذ سنتين';
    } else if (years > 2 && years < 11) {
      return ' منذ $years سنوات ';
    } else if (years > 10) {
      return ' منذ $years سنة ';
    }

    return ' منذ $years سنوات ';
  }

  @override
  String delimiter() => ' ';
}
