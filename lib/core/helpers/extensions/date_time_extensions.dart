part of './../export_manager/export_manager.dart';

extension DateTimeExtensions on DateTime {
  // Formats DateTime as "day-month-year"
  String toFormattedString() => "$day-$month-$year";

  // Checks if another DateTime is on the same day
  bool isSameDay(DateTime other) =>
      year == other.year && month == other.month && day == other.day;
}
