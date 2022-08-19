import 'package:test/test.dart';
import 'package:time_ago_provider/time_ago_provider.dart' as time_ago;

void main() {
  final DateTime now = DateTime.now();

  group('Time ago provider test', () {
    test('Default local format', () async {
      final clock = now.add(const Duration(seconds: 1));
      var result = time_ago.format(now, clock: clock);
      expect(result, equals('a moment ago'));
    });

    test('Custom local format', () async {
      final clock = now.add(const Duration(hours: 9));
      time_ago.setLocale('de', time_ago.German());
      var result = time_ago.format(now, clock: clock);
      expect(result, equals('9 hours ago'));
    });

    test('Default local format with full message', () async {
      final clock = now.add(const Duration(days: 15, hours: 15, minutes: 55));
      final result = time_ago.formatFull(now, clock: clock);
      expect(result, '15 days, 15 hours, 55 minutes');
    });

    test('Default local format with full message full duration', () async {
      final clock = now.add(const Duration(days: 986, hours: 67, minutes: 12));
      final result = time_ago.formatFull(now, clock: clock);
      expect(result, '2 years, 8 months, 28 days, 19 hours, 12 minutes');
    });

    test(
        'Default local format with full message with duration less than 1 second',
        () async {
      final clock = now.add(const Duration(milliseconds: 5, microseconds: 600));
      final result = time_ago.formatFull(now, clock: clock);
      expect(result, '1 second');
    });
  });
}
