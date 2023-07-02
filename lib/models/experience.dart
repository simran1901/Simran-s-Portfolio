import 'package:intl/intl.dart';

import '../enums.dart';

class Experience {
  final String? companyName;
  final String? imageUrl;
  final List<Designation>? designations;

  Experience({this.companyName, this.designations, this.imageUrl});
}

class Designation {
  late String title;
  late DateTime start;
  late DateTime end;
  late bool isPresent;
  late String startTime;
  late String endTime;
  String duration = "";
  late WorkType workType;
  late JobType jobType;
  late String description;
  late String skills;

  Designation(
      {required String title,
      required DateTime start,
      required DateTime end,
      required bool isPresent,
      required WorkType workType,
      required JobType jobType,
      required String description,
      required String skills}) {
    this.title = title;
    this.start = start;
    this.startTime = DateFormat("MMM yyyy").format(this.start);
    this.isPresent = isPresent;
    if (isPresent) {
      this.end = new DateTime.now();
      this.endTime = "Present";
    } else {
      this.end = end;
      this.endTime = DateFormat("MMM yyyy").format(this.end);
    }

    final Duration duration1 = end.difference(start);
    int months = (duration1.inDays / 30).ceil();
    int years = months ~/ 12;
    if (years > 0) {
      this.duration = "$years yr ";
    }
    months = months - years * 12;
    if (months > 0) {
      this.duration = this.duration + "$months mo";
    }
    this.workType = workType;
    this.jobType = jobType;
    this.description = description;
    this.skills = skills;
  }
}

List<Experience> demoExperiences = [
  Experience(
    companyName: "Adda247",
    imageUrl:
        "https://media.licdn.com/dms/image/C4D0BAQGZhNHq9X4-0w/company-logo_100_100/0/1671259967619?e=1696464000&v=beta&t=wlzZWMu3eWCBUAXgx0fjUbATvAHCY2a6bPsr7tq5J64",
    designations: [
      Designation(
        title: "SDE",
        start: new DateTime(2023, 07, 01),
        end: DateTime.now(),
        isPresent: true,
        workType: WorkType.Remote,
        jobType: JobType.FT,
        description:
            "Work as back-end developer. Build microservices using java spring boot, etc.",
        skills: "MySQL · Lua · API Development · Postman · Spring Boot · Java",
      ),
      Designation(
        title: "SDE Trainee",
        start: new DateTime(2022, 07, 18),
        end: new DateTime(2023, 06, 30),
        isPresent: false,
        workType: WorkType.Remote,
        jobType: JobType.FIN,
        description:
            "Work as back-end developer. Build microservices using java spring boot, etc.",
        skills: "API Development · Postman · Spring Boot · Java",
      ),
    ],
  ),
  Experience(
    companyName: "HighRadius",
    imageUrl:
        "https://media.licdn.com/dms/image/D4D0BAQEaUcGu3kvuyw/company-logo_100_100/0/1686122589880?e=1696464000&v=beta&t=NS-K7sVXSwgtVQ05nZqUoIns7iKtvYtziSbEaDICEg8",
    designations: [
      Designation(
        title: "Software Engineer Intern",
        start: new DateTime(2022, 01, 15),
        end: new DateTime(2022, 05, 15),
        isPresent: false,
        workType: WorkType.Remote,
        jobType: JobType.PIN,
        description:
            "Built an AI-enabled B2B invoice management system using various technologies.",
        skills:
            "Machine Learning · React.js · Databases · Web Development · Python (Programming Language) · Java",
      ),
    ],
  ),
  Experience(
    companyName: "Upwork",
    imageUrl:
        "https://media.licdn.com/dms/image/C4E0BAQFAvA55uI9RQQ/company-logo_100_100/0/1620158724382?e=1696464000&v=beta&t=TqYGyhCSr6EftyvjOoth2unU9PrJIWC06MdZMCFPFgc",
    designations: [
      Designation(
        title: "Freelance Software Developer",
        start: new DateTime(2021, 07, 01),
        end: new DateTime(2021, 12, 31),
        isPresent: false,
        workType: WorkType.Remote,
        jobType: JobType.FL,
        description:
            "Delivered multiple Node.js and Flutter projects to clients.",
        skills: "Postman API · MongoDB · Socket.io · Flutter · Node.js",
      ),
    ],
  ),
];
