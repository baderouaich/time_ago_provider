import 'package:test/test.dart';
import 'package:time_ago_provider/time_ago_provider.dart' as time_ago;

void main() {
  final DateTime now = DateTime.now();
  const String localeIt = 'it';

  group('Italian language test', () {
    test('Seconds test', () {
      final clockAddSecond = now.add(const Duration(milliseconds: 500));
      final clockAddSeconds = now.add(const Duration(seconds: 5));
      final result1 = time_ago.formatFull(
        now,
        locale: localeIt,
        clock: clockAddSecond,
      );
      final result2 = time_ago.format(
        now,
        locale: localeIt,
        clock: clockAddSeconds,
      );

      expect(result1, '1 secondo');
      expect(result2, 'un momento fa');
    });

    test('Minutes test', () {
      final clockAddMinute = now.add(const Duration(seconds: 59));
      final clockAddMinutes = now.add(const Duration(minutes: 5));
      final result1 = time_ago.format(
        now,
        locale: localeIt,
        clock: clockAddMinute,
        enableFromNow: true,
      );
      final result2 = time_ago.formatFull(
        now,
        locale: localeIt,
        clock: clockAddMinutes,
      );

      expect(result1, 'un minuto fa');
      expect(result2, '5 minuti');
    });

    test('Hours test', () {
      final clockAddHour = now.add(const Duration(minutes: 60));
      final clockAddHours = now.add(const Duration(hours: 5));
      final result1 = time_ago.format(
        now,
        locale: localeIt,
        clock: clockAddHour,
      );
      final result2 = time_ago.format(
        now,
        locale: localeIt,
        clock: clockAddHours,
      );

      expect(result1, 'circa un\'ora fa');
      expect(result2, '5 ore fa');
    });

    test('Days test', () {
      final clockAddDay = now.add(const Duration(days: 1));
      final clockAddDays = now.add(const Duration(days: 5));
      final result1 = time_ago.format(
        now,
        locale: localeIt,
        clock: clockAddDay,
      );
      final result2 = time_ago.formatFull(
        now,
        locale: localeIt,
        clock: clockAddDays,
      );

      expect(result1, 'un giorno fa');
      expect(result2, '5 giorni');
    });

    test('Months test', () {
      final clockAddMonth = now.add(const Duration(days: 30));
      final clockAddMonths = now.add(const Duration(days: 90));
      final result1 = time_ago.format(
        now,
        locale: localeIt,
        clock: clockAddMonth,
        enableFromNow: true,
      );
      final result2 = time_ago.formatFull(
        now,
        locale: localeIt,
        clock: clockAddMonths,
      );

      expect(result1, 'circa un mese fa');
      expect(result2, '3 mesi');
    });

    test('Years test', () {
      final clockAddYear = now.add(const Duration(days: 365));
      final clockAddYears = now.add(const Duration(days: 730));
      final result1 = time_ago.format(
        now,
        locale: localeIt,
        clock: clockAddYear,
        enableFromNow: true,
      );
      final result2 = time_ago.format(
        now,
        locale: localeIt,
        clock: clockAddYears,
      );

      expect(result1, 'circa un anno fa');
      expect(result2, '2 anni fa');
    });
  });
}
