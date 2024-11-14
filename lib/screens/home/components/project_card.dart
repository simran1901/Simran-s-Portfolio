// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import '../../../models/project.dart';
import '../../../responsive.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? Responsive.isMobile(context)? 7 : 5 :  5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              if (project.link != null)
                html.window.open(project.link!, '_self');
            },
            child: Text(
              "Know More >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
