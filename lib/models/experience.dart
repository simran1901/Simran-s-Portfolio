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
  late List<String> description;
  late String skills;

  Designation(
      {required String title,
      required DateTime start,
      required DateTime end,
      required bool isPresent,
      required WorkType workType,
      required JobType jobType,
      required List<String> description,
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
    int months = ((duration1.inDays + (duration1.inDays ~/ 60)) / 30).ceil();
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
    companyName: "American Express Global Business Travel",
    imageUrl: "assets/images/amexgbtLogo.jpg",
    designations: [
      Designation(
        title: "SDE I",
        start: new DateTime(2024, 09, 03),
        end: DateTime.now(),
        isPresent: true,
        workType: WorkType.Remote,
        jobType: JobType.FT,
        description: [
          "Currently working on Rail Booking System. Migrating business logic from a legacy system to a different service.",
        ],
        skills: "Java · Spring Boot · MongoDB · RabbitMQ · Maui",
      ),
    ],
  ),
  Experience(
    companyName: "Adda247",
    imageUrl: "assets/images/addaLogo.png",
    designations: [
      Designation(
        title: "SDE II",
        start: new DateTime(2024, 04, 01),
        end: new DateTime(2024, 08, 31),
        isPresent: false,
        workType: WorkType.OnSite,
        jobType: JobType.FT,
        description: [
          "Worked as Back-end developer responsible for building and deploying scalable microservices.",
        ],
        skills: "Java · Spring Boot · MySQL · Python · Lua · ElasticSearch · Redis · MongoDB · CI/CD",
      ),
      Designation(
        title: "SDE",
        start: new DateTime(2023, 07, 01),
        end: new DateTime(2024, 03, 31),
        isPresent: false,
        workType: WorkType.Remote,
        jobType: JobType.FT,
        description: [
          "Received Pre-Placement Offer (PPO) in recognition of exemplary performance and outstanding contributions during tenure as a SDE Trainee.",
          "Led the Test Series Module at Adda247, driving the successful delivery of high-quality software solutions by implementing best practices and ensuring seamless integration.",
          "Developed a Rank Prediction module leveraging normal distribution, probability, and statistical inference. Handled concurrency on Redis using locking mechanisms and Kafka to ensure no data loss.",
          "Designed & implemented a highly scalable Live Test feature providing users with real-life strictly timed test environment developed using Lambda, SQS, Redis, Quartz, Spring boot.",
        ],
        skills: "Java · Spring Boot · MySQL · Python · Lua · ElasticSearch · Redis · MongoDB · CI/CD",
      ),
      Designation(
        title: "SDE Trainee",
        start: new DateTime(2022, 07, 18),
        end: new DateTime(2023, 06, 30),
        isPresent: false,
        workType: WorkType.Remote,
        jobType: JobType.FIN,
        description: [
          "Developed RESTful APIs leveraging Spring Boot, MariaDB, Kafka, ElasticSearch, Redis, MongoDB and more.",
          "Developed significant features for Adda247 & Sankalp Bharat, contributing to their enhanced functionality & user experience.",
          "Optimized multiple APIs and conducted load test using Jmeter , ensuring scalability and availability to meet the demands of high traffic volumes.",
        ],
        skills: "Java · Spring Boot · MySQL · Python · Lua · ElasticSearch · Redis",
      ),
    ],
  ),
  Experience(
    companyName: "HighRadius",
    imageUrl: "assets/images/hrLogo.png",
    designations: [
      Designation(
        title: "Software Engineer Intern",
        start: new DateTime(2022, 01, 15),
        end: new DateTime(2022, 05, 15),
        isPresent: false,
        workType: WorkType.Remote,
        jobType: JobType.PIN,
        description: [
          "Contributed as a Full Stack Developer, developed an AI-enabled B2B invoice management system to streamline processes.",
          "Implemented Machine Learning algorithms, React.js for frontend, and robust databases, to create an efficient platform.",
          "Leveraged proficiency in Python and Java to integrate backend functionalities seamlessly, ensuring optimal performance."
        ],
        skills:
            "Machine Learning · React.js · Databases · Web Development · Python · Java",
      ),
    ],
  ),
  Experience(
    companyName: "Upwork",
    imageUrl: "assets/images/upLogo.png",
    designations: [
      Designation(
        title: "Freelance Software Developer",
        start: new DateTime(2021, 07, 01),
        end: new DateTime(2021, 12, 31),
        isPresent: false,
        workType: WorkType.Remote,
        jobType: JobType.FL,
        description: [
          "Delivered multiple Node.js and Flutter projects to clients."
        ],
        skills: "Postman API · MongoDB · Socket.io · Flutter · Node.js",
      ),
    ],
  ),
];
