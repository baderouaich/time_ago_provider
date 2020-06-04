import 'package:time_ago_provider/time_ago_provider.dart' as timeAgo;

void main() {
  /// Get the timestamp
  final nineMinutesElapsed = DateTime.now().subtract(Duration(minutes: 9));

  /// Format & get elapsed String
  print(timeAgo.format(nineMinutesElapsed)); // 9 minutes ago
  print(timeAgo.format(nineMinutesElapsed, locale: 'en_short')); // 9 min

  /// Adding new locales
  timeAgo.setLocale('de', timeAgo.German());
  timeAgo.setLocale('de_short', timeAgo.German(shortForm: true));
  print(timeAgo.format(nineMinutesElapsed, locale: 'de')); // vor 9 Minuten
  print(timeAgo.format(nineMinutesElapsed, locale: 'de_short')); // 9 Min.
}
