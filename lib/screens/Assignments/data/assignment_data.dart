class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Current Trends', 'Information Technology', '17 Mar 2023', '20 Mar 2023', 'Pending'),
  AssignmentData(
      '   Predictive ', 'Decision Trees', '11 Mar 2023', '20 Mar 2023', 'Submitted'),
  AssignmentData('Analytical', 'Time And Work', '21 Mar 2023', '27 Mar 2023',
      'Not Submitted'),
  AssignmentData(
      '  Language ', 'Inheritance', '17 Mar 2023', '30 Mar 2023', 'Pending'),
];