import 'package:flutter/material.dart';
import 'package:simran_portfolio/screens/home/components/unordered_list.dart';

import '../../../constants.dart';
import '../../../models/experience.dart';

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
                Image.asset(
                  experience.imageUrl!,
                  width: 50,
                  height: 50,
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

class DesignationCard extends StatefulWidget {
  const DesignationCard({
    Key? key,
    required this.designation,
    required this.isLast,
  }) : super(key: key);

  final Designation designation;
  final bool isLast;

  @override
  State<DesignationCard> createState() => _DesignationCardState();
}

class _DesignationCardState extends State<DesignationCard> {
  final GlobalKey _key = GlobalKey();
  double contentHeight = 0;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox renderBox =
          _key.currentContext?.findRenderObject() as RenderBox;
      contentHeight = renderBox.size.height;
      print("Height of the widget: $contentHeight");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
              widget.designation.title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: contentHeight,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: VerticalDivider(
                color: widget.isLast ? Colors.transparent : Colors.white,
                thickness: 1,
              ),
            ),
            content(),
          ],
        ),
      ],
    );
  }

  Widget content() {
    return Flexible(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.designation.startTime +
                " - " +
                widget.designation.endTime +
                " · " +
                widget.designation.duration,
          ),
          SizedBox(height: 3),
          Text(widget.designation.jobType.value +
              " · " +
              widget.designation.workType.value),
          SizedBox(height: 10),
          UnorderedList(widget.designation.description),
          // Text(
          //   designation.description,
          //   maxLines: 20,
          //   softWrap: true,
          //   overflow: TextOverflow.ellipsis,
          // ),
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
                  text: widget.designation.skills,
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
    );
  }
}