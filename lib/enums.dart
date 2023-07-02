enum JobType {
  FT("Full-time"),
  FIN("Full-time Internship"),
  PIN("Part-time Internship"),
  PT("Part-time"),
  FL("Freelance")
  ;

  final String value;

  const JobType(this.value);
}

enum WorkType {
  Remote("Remote"),
  OnSite("On-site")
  ;

  final String value;

  const WorkType(this.value);
}