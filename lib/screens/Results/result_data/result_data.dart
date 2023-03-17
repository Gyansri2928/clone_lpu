class ResultData{
  final String subjectName;
  final int Totalmarks;
  final int obtainedMarks;
  final String grade;

  ResultData(this.Totalmarks,this.subjectName,this.obtainedMarks,this.grade);

}
List<ResultData> result = [
  ResultData(
      100,
      "Current Trends",
      80,
      "A+"),
  ResultData(
      100,
      "Analytical",
      70,
      "A"),
  ResultData(
      100,
      "Predictive Analytics",
      49,
      "C"),
  ResultData(
      100,
      "Language Inputs",
      90,
      "O"),

];