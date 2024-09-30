part of './../export_manager/export_manager.dart';

extension DateTimeExtensions on DateTime {
  // Formats DateTime as "day-month-year"
  String toFormattedString() => "$day-$month-$year";

  // Checks if another DateTime is on the same day
  bool isSameDay(DateTime other) =>
      year == other.year && month == other.month && day == other.day;

  //************ */ timeAgo *********************/
  String timeAgo({bool numericDates = true}) {
    final date2 = DateTime.now();
    final difference = date2.difference(this);

    if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? "مند اسبوع" : 'الاسبوع الماضي';
    } else if (difference.inDays >= 2) {
      return 'منذ ${difference.inDays} يوم';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? 'منذ 1 يوم' : 'الامس';
    } else if (difference.inHours >= 2) {
      return 'منذ ${difference.inHours} ساعة';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? 'منذ 1 ساعة' : 'ساعة واحدة مضت';
    } else if (difference.inMinutes >= 2) {
      return 'منذ ${difference.inMinutes} دقيقة';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? 'منذ دقية' : 'دقيقة واحدة مضت';
    } else if (difference.inSeconds >= 3) {
      return 'منذ ${difference.inSeconds} ثانية';
    } else {
      return 'الان';
    }
  }
}
