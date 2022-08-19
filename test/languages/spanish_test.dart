import 'package:test/test.dart';
import 'package:time_ago_provider/time_ago_provider.dart' as time_ago;

void main() {
  final DateTime now = DateTime.now();
  const String localeEs = 'es';

  group('Spanish language test', () {
    test('Seconds test', () {
      final clockAddSecond = now.add(const Duration(milliseconds: 500));
      final clockAddSeconds = now.add(const Duration(seconds: 5));
      final result1 = time_ago.formatFull(
        now,
        locale: localeEs,
        clock: clockAddSecond,
      );
      final result2 = time_ago.format(
        now,
        locale: localeEs,
        clock: clockAddSeconds,
      );

      expect(result1, '1 segundo');
      expect(result2, 'hace un momento');
    });

    test('Minutes test', () {
      final clockAddMinute = now.add(const Duration(seconds: 59));
      final clockAddMinutes = now.add(const Duration(minutes: 5));
      final result1 = time_ago.format(
        now,
        locale: localeEs,
        clock: clockAddMinute,
        enableFromNow: true,
      );
      final result2 = time_ago.formatFull(
        now,
        locale: localeEs,
        clock: clockAddMinutes,
      );

      expect(result1, 'hace un minuto');
      expect(result2, '5 minutos');
    });

    test('Hours test', () {
      final clockAddHour = now.add(const Duration(minutes: 60));
      final clockAddHours = now.add(const Duration(hours: 5));
      final result1 = time_ago.format(
        now,
        locale: localeEs,
        clock: clockAddHour,
      );
      final result2 = time_ago.format(
        now,
        locale: localeEs,
        clock: clockAddHours,
      );

      expect(result1, 'hace cerca de una hora');
      expect(result2, 'hace 5 horas');
    });

    test('Days test', () {
      final clockAddDay = now.add(const Duration(days: 1));
      final clockAddDays = now.add(const Duration(days: 5));
      final result1 = time_ago.format(
        now,
        locale: localeEs,
        clock: clockAddDay,
      );
      final result2 = time_ago.formatFull(
        now,
        locale: localeEs,
        clock: clockAddDays,
      );

      expect(result1, 'hace un día');
      expect(result2, '5 días');
    });

    test('Months test', () {
      final clockAddMonth = now.add(const Duration(days: 30));
      final clockAddMonths = now.add(const Duration(days: 90));
      final result1 = time_ago.format(
        now,
        locale: localeEs,
        clock: clockAddMonth,
        enableFromNow: true,
      );
      final result2 = time_ago.formatFull(
        now,
        locale: localeEs,
        clock: clockAddMonths,
      );

      expect(result1, 'hace cerca un mes');
      expect(result2, '3 meses');
    });

    test('Years test', () {
      final clockAddYear = now.add(const Duration(days: 365));
      final clockAddYears = now.add(const Duration(days: 730));
      final result1 = time_ago.format(
        now,
        locale: localeEs,
        clock: clockAddYear,
        enableFromNow: true,
      );
      final result2 = time_ago.format(
        now,
        locale: localeEs,
        clock: clockAddYears,
      );

      expect(result1, 'hace cerca de una año');
      expect(result2, 'hace 2 años');
    });
  });
}
