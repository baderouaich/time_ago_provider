import 'package:test/test.dart';
import 'package:time_ago_provider/time_ago_provider.dart' as timeAgo;

void main() {
  DateTime now = DateTime.now();

  test('Default local format', () async {
    final clock = now.add(Duration(seconds: 1));
    var result = timeAgo.format(now, clock: clock);
    expect(result, equals('a moment ago'));
  });

  test('Custom local format', () async {
    final clock = now.add(Duration(hours: 9));
    timeAgo.setLocale('de', timeAgo.German());
    var result = timeAgo.format(now, clock: clock);
    expect(result, equals('9 hours ago'));
  });
}
