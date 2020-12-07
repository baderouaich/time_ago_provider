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
    final result = time_ago.formatFull(now, clock: clock);
    expect(result, '15 days, 15 hours, 55 minutes');
  });

  test('Default local format with full message full duration', () async {
    final clock = now.add(Duration(days: 986, hours: 67, minutes: 12));
    final result = time_ago.formatFull(now, clock: clock);
    expect(result, '2 years, 8 months, 28 days, 19 hours, 12 minutes');
  });

  test(
      'Default local format with full message with duration less than 1 second',
      () async {
    final clock = now.add(Duration(milliseconds: 5, microseconds: 600));
    final result = time_ago.formatFull(now, clock: clock);
    expect(result, '1 second');
  });

  ///--- Languages Tests ---///
  group('Italian language test', () {
    test('Seconds test', () {
      final clockAddSecond = now.add(Duration(milliseconds: 500));
      final clockAddSeconds = now.add(Duration(seconds: 5));
      final result1 = time_ago.formatFull(
        now,
        locale: 'it',
        clock: clockAddSecond,
      );
      final result2 =
          time_ago.format(now, locale: 'it', clock: clockAddSeconds);

      expect(result1, '1 secondo');
      expect(result2, 'un momento fa');
    });

    test('Minutes test', () {
      final clockAddMinute = now.add(Duration(seconds: 59));
      final clockAddMinutes = now.add(Duration(minutes: 5));
      final result1 = time_ago.format(
        now,
        locale: 'it',
        clock: clockAddMinute,
        enableFromNow: true,
      );
      final result2 =
          time_ago.formatFull(now, locale: 'it', clock: clockAddMinutes);

      expect(result1, 'un minuto fa');
      expect(result2, '5 minuti');
    });

    test('Hours test', () {
      final clockAddHour = now.add(Duration(minutes: 60));
      final clockAddHours = now.add(Duration(hours: 5));
      final result1 = time_ago.format(
        now,
        locale: 'it',
        clock: clockAddHour,
      );
      final result2 = time_ago.format(now, locale: 'it', clock: clockAddHours);

      expect(result1, 'circa un\'ora fa');
      expect(result2, '5 ore fa');
    });

    test('Days test', () {
      final clockAddDay = now.add(Duration(days: 1));
      final clockAddDays = now.add(Duration(days: 5));
      final result1 = time_ago.format(
        now,
        locale: 'it',
        clock: clockAddDay,
      );
      final result2 =
          time_ago.formatFull(now, locale: 'it', clock: clockAddDays);

      expect(result1, 'un giorno fa');
      expect(result2, '5 giorni');
    });

    test('Months test', () {
      final clockAddMonth = now.add(Duration(days: 30));
      final clockAddMonths = now.add(Duration(days: 90));
      final result1 = time_ago.format(
        now,
        locale: 'it',
        clock: clockAddMonth,
        enableFromNow: true,
      );
      final result2 =
          time_ago.formatFull(now, locale: 'it', clock: clockAddMonths);

      expect(result1, 'circa un mese fa');
      expect(result2, '3 mesi');
    });

    test('Years test', () {
      final clockAddYear = now.add(Duration(days: 365));
      final clockAddYears = now.add(Duration(days: 730));
      final result1 = time_ago.format(
        now,
        locale: 'it',
        clock: clockAddYear,
        enableFromNow: true,
      );
      final result2 = time_ago.format(now, locale: 'it', clock: clockAddYears);

      expect(result1, 'circa un anno fa');
      expect(result2, '2 anni fa');
    });
  });
}
