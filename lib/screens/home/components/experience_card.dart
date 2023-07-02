import 'package:flutter/material.dart';

import '../../../models/experience.dart';
import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  experience.imageUrl!,
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: defaultPadding),
                Text(
                  experience.companyName!,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: experience.designations!.length,
              itemBuilder: (context, index) => DesignationCard(
                designation: experience.designations![index],
                isLast: experience.designations!.length == index + 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DesignationCard extends StatelessWidget {
  const DesignationCard({
    Key? key,
    required this.designation,
    required this.isLast,
  }) : super(key: key);

  final Designation designation;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: CircleAvatar(
                radius: 4,
                backgroundColor: primaryColor,
              ),
            ),
            Text(
              designation.title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 10),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: VerticalDivider(
                  color: isLast ? Colors.transparent : Colors.white,
                  thickness: 1,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      designation.startTime +
                          " - " +
                          designation.endTime +
                          " · " +
                          designation.duration,
                    ),
                    SizedBox(height: 3),
                    Text(designation.jobType.value +
                        " · " +
                        designation.workType.value),
                    SizedBox(height: 10),
                    Text(
                      designation.description,
                      maxLines: 5,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10),
                    RichText(
                      maxLines: 5,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: "Skills: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: bodyTextColor,
                        ),
                        children: [
                          TextSpan(
                            text: designation.skills,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: bodyTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
