import 'package:time_ago_provider/time_ago_provider.dart' as timeAgo;

void main() {
  //- Get the timestamp
  DateTime nineMinutesElapsed = DateTime.now().subtract(Duration(minutes: 9));
  //- Format & get elapsed String
  print(timeAgo.format(nineMinutesElapsed)); // 9 minutes ago
  print(timeAgo.format(nineMinutesElapsed, locale: 'en_short')); // 9 min

  //Adding new locales
  // Add a new locale messages
  timeAgo.setLocale('de', timeAgo.German());
  timeAgo.setLocale('de_short', timeAgo.GermanShort());
  print(timeAgo.format(nineMinutesElapsed)); // 15 minutes ago
}
