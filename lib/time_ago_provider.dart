library time_ago_provider;

class TimeAgo {
  static const int SECOND_MILLIS = 1000;
  static const int MINUTE_MILLIS = 60 * SECOND_MILLIS;
  static const int HOUR_MILLIS = 60 * MINUTE_MILLIS;
  static const int DAY_MILLIS = 24 * HOUR_MILLIS;
  static const int MONTH_MILLIS = 30 * DAY_MILLIS;
  static const int YEAR_MILLIS = 12 * MONTH_MILLIS;

  static String getTimeAgo({int timeStamp, Language language}) {
    assert(timeStamp != null,
        "Parameter timeStamp must not be null: TimeAgo.getTimeAgo(timeStamp: YOUR_TIME_STAMP)");
    language = language ?? Language.ENGLISH;

    if (timeStamp < 1000000000000) {
      timeStamp *= 1000;
    }

    int now = DateTime.now().millisecondsSinceEpoch;
    if (timeStamp > now || timeStamp <= 0) {
      switch (language) {
        case Language.ENGLISH:
          return "just now";
        case Language.ARABIC:
          return "الآن";
        case Language.GERMAN:
          return "jetzt";
        case Language.SPANISH:
          return "ahora";
        case Language.CHINESE:
          return "现在";
        case Language.RUSSIAN:
          return "прямо сейчас";
        case Language.PORTUGUESE:
          return "agora";
        case Language.JAPANESE:
          return "ちょうど今";
        case Language.HINDI:
          return "अभी";
        case Language.FRENCH:
          return "à présent";
        default:
          return "";
      }
    }

    final int difference = now - timeStamp;
    if (difference < MINUTE_MILLIS) {
      switch (language) {
        case Language.ENGLISH:
          return "just now";
        case Language.ARABIC:
          return "الآن";
        case Language.GERMAN:
          return "jetzt";
        case Language.SPANISH:
          return "ahora";
        case Language.CHINESE:
          return "现在";
        case Language.RUSSIAN:
          return "прямо сейчас";
        case Language.PORTUGUESE:
          return "agora";
        case Language.JAPANESE:
          return "ちょうど今";
        case Language.HINDI:
          return "अभी";
        case Language.FRENCH:
          return "à présent";
        default:
          return "";
      }
    } else if (difference < 2 * MINUTE_MILLIS) {
      switch (language) {
        case Language.ENGLISH:
          return "a minute ago";
        case Language.ARABIC:
          return "منذ دقيقة";
        case Language.GERMAN:
          return "vor einer Minute";
        case Language.SPANISH:
          return "hace un minuto";
        case Language.CHINESE:
          return "一分钟前";
        case Language.RUSSIAN:
          return "прямо сейчас";
        case Language.PORTUGUESE:
          return "um minuto atrás";
        case Language.JAPANESE:
          return "分前";
        case Language.HINDI:
          return "एक मिनट पहले";
        case Language.FRENCH:
          return "Il y'a une minute";
        default:
          return "";
      }
    } else if (difference < 50 * MINUTE_MILLIS) {
      switch (language) {
        case Language.ENGLISH:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} minutes ago";
        case Language.ARABIC:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} دقائق مضت ";
        case Language.GERMAN:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} Vor ein paar Minuten";
        case Language.SPANISH:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} hace minutos";
        case Language.CHINESE:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} 几分钟前";
        case Language.RUSSIAN:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} минут назад";
        case Language.PORTUGUESE:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} minutos atrás";
        case Language.JAPANESE:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} 数分前";
        case Language.HINDI:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} कुछ देर पहले";
        case Language.FRENCH:
          return "${(difference / MINUTE_MILLIS).toString().split(".")[0]} dernières minutes";
        default:
          return "";
      }
    } else if (difference < 90 * MINUTE_MILLIS) {
      switch (language) {
        case Language.ENGLISH:
          return "an hour ago";
        case Language.ARABIC:
          return "منذ ساعة";
        case Language.GERMAN:
          return "vor einer Stunde";
        case Language.SPANISH:
          return "hace una hora";
        case Language.CHINESE:
          return "一小时前";
        case Language.RUSSIAN:
          return "час назад";
        case Language.PORTUGUESE:
          return "uma hora atrás";
        case Language.JAPANESE:
          return "一時間前";
        case Language.HINDI:
          return "एक घंटा पहले";
        case Language.FRENCH:
          return "il y a une heure";
        default:
          return "";
      }
    } else if (difference < 24 * HOUR_MILLIS) {
      switch (language) {
        case Language.ENGLISH:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} hours ago";
        case Language.ARABIC:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} ساعات مضت ";
        case Language.GERMAN:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} Vor Stunden";
        case Language.SPANISH:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} Horas atras";
        case Language.CHINESE:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} 几小时前";
        case Language.RUSSIAN:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} прошедшие часы";
        case Language.PORTUGUESE:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} Horas atrás";
        case Language.JAPANESE:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} 時間前";
        case Language.HINDI:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} घंटो पहले";
        case Language.FRENCH:
          return "${(difference / HOUR_MILLIS).toString().split(".")[0]} heures passées";
        default:
          return "";
      }
    } else if (difference < 48 * HOUR_MILLIS) {
      switch (language) {
        case Language.ENGLISH:
          return "yesterday";
        case Language.ARABIC:
          return "في الامس";
        case Language.GERMAN:
          return "gestern";
        case Language.SPANISH:
          return "ayer";
        case Language.CHINESE:
          return "昨天";
        case Language.RUSSIAN:
          return "вчера";
        case Language.PORTUGUESE:
          return "ontem";
        case Language.JAPANESE:
          return "昨日";
        case Language.HINDI:
          return "बिता कल";
        case Language.FRENCH:
          return "hier";
        default:
          return "";
      }
    } else if (difference < 30 * DAY_MILLIS) {
      switch (language) {
        case Language.ENGLISH:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} days ago";
        case Language.ARABIC:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} أيام مضت ";
        case Language.GERMAN:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} Vor Tagen";
        case Language.SPANISH:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} hace días";
        case Language.CHINESE:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} 几天前";
        case Language.RUSSIAN:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} дней назад";
        case Language.PORTUGUESE:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} dias atrás";
        case Language.JAPANESE:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} 数日前";
        case Language.HINDI:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} दिन पहले";
        case Language.FRENCH:
          return "${(difference / DAY_MILLIS).toString().split(".")[0]} jours passés";
        default:
          return "";
      }
    } else if (difference < 12 * MONTH_MILLIS) {
      switch (language) {
        case Language.ENGLISH:
          return (difference / MONTH_MILLIS < 2)
              ? "a month ago"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} months ago";
        case Language.ARABIC:
          return (difference / MONTH_MILLIS < 2)
              ? "قبل شهر"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} أشهر مضت ";
        case Language.GERMAN:
          return (difference / MONTH_MILLIS < 2)
              ? "vor einem Monat"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} vor wenigen Monaten";
        case Language.SPANISH:
          return (difference / MONTH_MILLIS < 2)
              ? "hace un mes"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} Hace meses";
        case Language.CHINESE:
          return (difference / MONTH_MILLIS < 2)
              ? "一个月前"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} 几个月前";
        case Language.RUSSIAN:
          return (difference / MONTH_MILLIS < 2)
              ? "месяц назад"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} прошедшие месяцы";
        case Language.PORTUGUESE:
          return (difference / MONTH_MILLIS < 2)
              ? "um mês atrás"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} meses antes";
        case Language.JAPANESE:
          return (difference / MONTH_MILLIS < 2)
              ? "一ヶ月前"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} 数か月前";
        case Language.HINDI:
          return (difference / MONTH_MILLIS < 2)
              ? "एक महीने पहले"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} महिनो पहले";
        case Language.FRENCH:
          return (difference / MONTH_MILLIS < 2)
              ? "il y a un mois"
              : "${(difference / MONTH_MILLIS).toString().split(".")[0]} derniers mois";
        default:
          return "";
      }
    } else {
      switch (language) {
        case Language.ENGLISH:
          return (difference / YEAR_MILLIS < 2)
              ? "a year ago"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} years ago";
        case Language.ARABIC:
          return (difference / YEAR_MILLIS < 2)
              ? "قبل عام"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} سنين مضت ";
        case Language.GERMAN:
          return (difference / YEAR_MILLIS < 2)
              ? "vor einem Jahr"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} vor Jahren";
        case Language.SPANISH:
          return (difference / YEAR_MILLIS < 2)
              ? "Hace un año"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} hace años que";
        case Language.CHINESE:
          return (difference / YEAR_MILLIS < 2)
              ? "一年前"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} 几年前";
        case Language.RUSSIAN:
          return (difference / YEAR_MILLIS < 2)
              ? "год назад"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} прошедшие годы";
        case Language.PORTUGUESE:
          return (difference / YEAR_MILLIS < 2)
              ? "um ano atrás"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} anos atrás";
        case Language.JAPANESE:
          return (difference / YEAR_MILLIS < 2)
              ? "一年前"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} 数年前";
        case Language.HINDI:
          return (difference / YEAR_MILLIS < 2)
              ? "एक साल पहले"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} बहुत साल पहले";
        case Language.FRENCH:
          return (difference / YEAR_MILLIS < 2)
              ? "il y a un an"
              : "${(difference / YEAR_MILLIS).toString().split(".")[0]} dernières années";
        default:
          return "";
      }
    }
  }
}

/// Supported Languages (Locals)
enum Language {
  ENGLISH,
  ARABIC,
  GERMAN,
  SPANISH,
  CHINESE,
  RUSSIAN,
  PORTUGUESE,
  JAPANESE,
  HINDI,
  FRENCH,
}
