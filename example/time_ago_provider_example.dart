// ignore_for_file: avoid_print

import 'package:time_ago_provider/time_ago_provider.dart' as time_ago;

void main() {
  /// Default Format (summary of elapsed time)
  final nineMinutesElapsed =
      DateTime.now().subtract(const Duration(minutes: 9));
  print(time_ago.format(nineMinutesElapsed)); // 9 minutes ago
  print(time_ago.format(nineMinutesElapsed, locale: 'en_short')); // 9 min

  /// Full Format (detailed elapsed time years, months, days...)
  final longTimeElapsed = DateTime.now()
      .subtract(const Duration(days: 999, hours: 6, minutes: 8, seconds: 3));
  print(time_ago.formatFull(
      longTimeElapsed)); // 2 years, 9 months, 9 days, 6 hours, 8 minutes, 3 seconds
  print(time_ago.formatFull(longTimeElapsed,
      locale: 'en_short')); // 2 yr, 9 mo, 9 d, 6 h, 8 min, 3 sec

  /// Adding new locales
  time_ago.setLocale('de', time_ago.German());
  time_ago.setLocale('de_short', time_ago.German(shortForm: true));
  print(time_ago.format(nineMinutesElapsed, locale: 'de')); // vor 9 Minuten
  print(time_ago.format(nineMinutesElapsed, locale: 'de_short')); // 9 Min.
}
