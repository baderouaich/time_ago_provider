import 'languages/language.dart';
import 'languages/english.dart';

Map<String, Language> _languages = {
  'en': English(),
  'en_short': EnglishShort()
};

/// Sets a [locale] with the provided [Language] to be available when
/// using the [format] function.
///
/// Example:
/// ```dart
/// //set locale to german long form
/// setLocale('de', GermanLong())
/// ```
///
/// If you want to define locale message implement [Language] interface
/// with the desired messages
///
void setLocale(String locale, Language language) {
  assert(locale != null, '[locale] must not be null');
  assert(language != null, '[language] must not be null');
  _languages[locale] = language;
}

/// Formats provided [date] to a fuzzy time like 'a moment ago'
///
/// - If [locale] is passed will look for message for that locale, if you want
///   to add or override locales use [setLocale]. Defaults to 'en'
/// - If [clock] is passed this will be the point of reference for calculating
///   the delta time. Defaults to DateTime.now()
/// - If [allowFromNow] is passed, format will use the From prefix, ie. a date
///   9 minutes from now in 'en' locale will display as "9 minutes from now"
String format(DateTime date,
    {String locale, DateTime clock, bool allowFromNow}) {
  final m_locale = locale ?? 'en';
  final m_isAllowFromNow = allowFromNow ?? false;
  final language = _languages[m_locale] ?? English();
  final m_clock = clock ?? DateTime.now();
  var deltaTime = m_clock.millisecondsSinceEpoch - date.millisecondsSinceEpoch;

  String prefix, suffix;

  if (m_isAllowFromNow && deltaTime < 0) {
    deltaTime = date.isBefore(m_clock) ? deltaTime : deltaTime.abs();
    prefix = language.prefixFromNow();
    suffix = language.suffixFromNow();
  } else {
    prefix = language.prefixAgo();
    suffix = language.suffixAgo();
  }

  final num SECONDS = deltaTime / 1000;
  final num MINUTES = SECONDS / 60;
  final num HOURS = MINUTES / 60;
  final num DAYS = HOURS / 24;
  final num MONTHS = DAYS / 30;
  final num YEARS = DAYS / 365;

  String result;
  if (SECONDS < 45) {
    result = language.lessThanOneMinute(SECONDS.round());
  } else if (SECONDS < 90) {
    result = language.aboutAMinute(MINUTES.round());
  } else if (MINUTES < 45) {
    result = language.minutes(MINUTES.round());
  } else if (MINUTES < 90) {
    result = language.aboutAnHour(MINUTES.round());
  } else if (HOURS < 24) {
    result = language.hours(HOURS.round());
  } else if (HOURS < 48) {
    result = language.aDay(HOURS.round());
  } else if (DAYS < 30) {
    result = language.days(DAYS.round());
  } else if (DAYS < 60) {
    result = language.aboutAMonth(DAYS.round());
  } else if (DAYS < 365) {
    result = language.months(MONTHS.round());
  } else if (YEARS < 2) {
    result = language.aboutAYear(MONTHS.round());
  } else {
    result = language.years(YEARS.round());
  }

  return [prefix, result, suffix]
      .where((str) => str != null && str.isNotEmpty)
      .join(language.delimiter());
}
