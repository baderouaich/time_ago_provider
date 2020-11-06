import 'package:test/test.dart';
import 'package:time_ago_provider/time_ago_provider.dart' as time_ago;

void main() {
  var now = DateTime.now();

  test('Default local format', () async {
    final clock = now.add(Duration(seconds: 1));
    var result = time_ago.format(now, clock: clock);
    expect(result, equals('a moment ago'));
  });

  test('Custom local format', () async {
    final clock = now.add(Duration(hours: 9));
    time_ago.setLocale('de', time_ago.German());
    var result = time_ago.format(now, clock: clock);
    expect(result, equals('9 hours ago'));
  });

  test('Default local format with full message', () async {
    final clock = now.add(Duration(days: 15, hours: 15, minutes: 55));
    final result = time_ago.format(now, clock: clock, full: true);
    expect(result, '15 days, 15 hours, 55 minutes');
  });
}
