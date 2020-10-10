import 'languages/language.dart';
import 'languages/english.dart';
import 'languages/german.dart';
import 'languages/polish.dart';
import 'languages/arabic.dart';
import 'languages/french.dart';
import 'languages/turkish.dart';

/// Formats provided [date] to a fuzzy time like '9 minutes ago'
/// - If [locale] is passed will look for message for that locale, if you want
///   to add or override locales use [setLocale]. Defaults to 'en'
/// - If [clock] is passed this will be the point of reference for calculating
///   the delta time. Defaults to DateTime.now()
/// - If [enableFromNow] is passed, format will use the From prefix, ie. a date
///   9 minutes from now in 'en' locale will display as "9 minutes from now"
String format(DateTime date,
    {String locale, DateTime clock, bool enableFromNow}) {
  final m_locale = locale ?? 'en';
  final m_isFromNowEnabled = enableFromNow ?? false;
  final m_language = _languages[m_locale] ?? English();
  final m_clock = clock ?? DateTime.now();
  var deltaTime = m_clock.millisecondsSinceEpoch - date.millisecondsSinceEpoch;

  String pfx, sfx;

  if (m_isFromNowEnabled && deltaTime < 0) {
    deltaTime = date.isBefore(m_clock) ? deltaTime : deltaTime.abs();
    pfx = m_language.prefixFromNow();
    sfx = m_language.suffixFromNow();
  } else {
    pfx = m_language.prefixAgo();
    sfx = m_language.suffixAgo();
  }

  final num SECONDS = deltaTime / 1000;
  final num MINUTES = SECONDS / 60;
  final num HOURS = MINUTES / 60;
  final num DAYS = HOURS / 24;
  final num MONTHS = DAYS / 30;
  final num YEARS = DAYS / 365;

  String res;
  if (SECONDS < 45) {
    res = m_language.lessThanOneMinute(SECONDS.round());
  } else if (SECONDS < 90) {
    res = m_language.aboutAMinute(MINUTES.round());
  } else if (MINUTES < 45) {
    res = m_language.minutes(MINUTES.round());
  } else if (MINUTES < 90) {
    res = m_language.aboutAnHour(MINUTES.round());
  } else if (HOURS < 24) {
    res = m_language.hours(HOURS.round());
  } else if (HOURS < 48) {
    res = m_language.aDay(HOURS.round());
  } else if (DAYS < 30) {
    res = m_language.days(DAYS.round());
  } else if (DAYS < 60) {
    res = m_language.aboutAMonth(DAYS.round());
  } else if (DAYS < 365) {
    res = m_language.months(MONTHS.round());
  } else if (YEARS < 2) {
    res = m_language.aboutAYear(MONTHS.round());
  } else {
    res = m_language.years(YEARS.round());
  }
  return [pfx, res, sfx]
      .where((s) => s != null && s.isNotEmpty)
      .join(m_language.delimiter());
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
  'pl': Polish(),
  'pl_short': Polish(shortForm: true),
  'fr': French(),
  'fr_short': French(shortForm: true),
  'ar': Arabic(),
  'ar_short': Arabic(shortForm: true),
  'tr': Turkish(),
  'tr_short': Turkish(shortForm: true)
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
  assert(locale != null, '[locale] must not be null');
  assert(language != null, '[language] must not be null');
  _languages[locale] = language;
}
