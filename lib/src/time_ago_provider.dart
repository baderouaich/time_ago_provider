import 'languages/languages.dart';

/// Formats provided [date] to a fuzzy time like '9 minutes ago'
/// - If [locale] is passed will, look for message for that locale, if you want
///   to add or override locales use [setLocale]. Defaults to 'en'
/// - If [clock] is passed, this will be the point of reference for calculating
///   the delta time. Defaults to DateTime.now()
/// - If [enableFromNow] is passed, format will use the From prefix, ie. a date
///   9 minutes from now in 'en' locale will display as "9 minutes from now"
String format(
  DateTime date, {
  String locale = 'en',
  DateTime? clock,
  bool enableFromNow = false,
}) {
  final language = _languages[locale] ?? English();
  clock ??= DateTime.now();

  final duration = clock.difference(date);
  var deltaTime = duration.inMilliseconds;
  String pfx, sfx;

  if (enableFromNow && deltaTime < 0) {
    deltaTime = date.isBefore(clock) ? deltaTime : deltaTime.abs();
    pfx = language.prefixFromNow();
    sfx = language.suffixFromNow();
  } else {
    pfx = language.prefixAgo();
    sfx = language.suffixAgo();
  }

  final num seconds = deltaTime / 1000;
  final num minutes = seconds / 60;
  final num hours = minutes / 60;
  final num days = hours / 24;
  final num months = days / 30;
  final num years = days / 365;

  String res;
  if (seconds < 45) {
    res = language.lessThanOneMinute(seconds.round());
  } else if (seconds < 90) {
    res = language.aboutAMinute(minutes.round());
  } else if (minutes < 45) {
    res = language.minutes(minutes.round());
  } else if (minutes < 90) {
    res = language.aboutAnHour(minutes.round());
  } else if (hours < 24) {
    res = language.hours(hours.round());
  } else if (hours < 48) {
    res = language.aDay(hours.round());
  } else if (days < 30) {
    res = language.days(days.round());
  } else if (days < 60) {
    res = language.aboutAMonth(days.round());
  } else if (days < 365) {
    res = language.months(months.round());
  } else if (years < 2) {
    res = language.aboutAYear(months.round());
  } else {
    res = language.years(years.round());
  }

  return [pfx, res, sfx].where((s) => s.isNotEmpty).join(language.delimiter());
}

/// Formats provided [date] to a full fuzzy time like '2 years, 9 months, 9 days, 6 hours, 8 minutes, 3 seconds'
/// - If [locale] is passed, will look for message for that locale, if you want
///   to add or override locales use [setLocale]. Defaults to 'en'
/// - If [clock] is passed, this will be the point of reference for calculating
///   the delta time. Defaults to DateTime.now()
/// - If [enableFromNow] is passed, format will use the From prefix, ie. a date
///   9 minutes from now in 'en' locale will display as "9 minutes from now"
String formatFull(
  DateTime date, {
  String locale = 'en',
  DateTime? clock,
  bool enableFromNow = false,
}) {
  final language = _languages[locale] ?? English();
  clock ??= DateTime.now();

  final Duration duration = clock.difference(date);
  final int seconds = duration.inSeconds % 60;

  if (duration.inSeconds < 1) {
    return language.aboutASecond(0);
  }

  final int minutes = duration.inMinutes % 60;
  final int hours = duration.inHours % 24;
  final int days = duration.inDays % 30;
  final int monthsAll = (duration.inDays / 30).floor();
  final int months = monthsAll % 12;
  final int years = (monthsAll / 12).floor();

  final stringParts = <String>[];

  if (years > 0) {
    stringParts.add(language.years(years));
  }

  if (months > 0) {
    stringParts.add(language.months(months));
  }

  if (days > 0) {
    stringParts.add(language.days(days));
  }

  if (hours > 0) {
    stringParts.add(language.hours(hours));
  }

  if (minutes > 0) {
    stringParts.add(language.minutes(minutes));
  }

  if (seconds > 0) {
    stringParts.add(language.seconds(seconds));
  }

  return stringParts.join(', ');
}

/// Locales/Languages Map, add desired locales by calling
/// setLocale(prefix, language)
/// e.g: for german long form
/// setLocale("de", German());
/// e.g: for german short form
/// setLocale("de_short", German(shortForm: true));
Map<String, Language> _languages = {
  'en': English(),
  'en_short': English(shortForm: true),
  'de': German(),
  'de_short': German(shortForm: true),
  'it': Italian(),
  'it_short': Italian(shortForm: true),
  'pl': Polish(),
  'pl_short': Polish(shortForm: true),
  'fa': Persian(),
  'fa_short': Persian(shortForm: true),
  'fr': French(),
  'fr_short': French(shortForm: true),
  'ar': Arabic(),
  'ar_short': Arabic(shortForm: true),
  'tr': Turkish(),
  'tr_short': Turkish(shortForm: true),
  'pr': Portuguese(),
  'pr_short': Portuguese(shortForm: true),
  'sv': Swedish(),
  'sv_short': Swedish(shortForm: true),
  'nb': Norwegian(),
  'nb_short': Norwegian(shortForm: true),
  'es': Spanish(),
  'es_short': Spanish(shortForm: true)
};

/// Sets a [locale] with the provided [Language] to be available when
/// using the [format] function.
///
/// Example:
/// ```dart
/// //set locale to german long form
/// setLocale('de', German(shortForm: false));
/// setLocale('de_short', German(shortForm: true));
/// ```
///
/// If you want to define locale message implement [Language] interface
/// with the desired messages
///
void setLocale(String locale, Language language) {
  _languages[locale] = language;
}
