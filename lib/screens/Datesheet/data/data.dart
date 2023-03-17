class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DataSheet> dateSheet = [
  DataSheet(11, 'JAN', 'Machine Learning', 'Monday', '9:00am'),
  DataSheet(12, 'JAN', 'Photoshop', 'Tuesday', '10:00am'),
  DataSheet(13, 'JAN', 'Current Trends', 'Wednesday', '9:30am'),
  DataSheet(14, 'JAN', 'Analytical', 'Thursday', '11:00am'),
  DataSheet(15, 'JAN', 'Mathematics', 'Friday', '9:00am'),
];