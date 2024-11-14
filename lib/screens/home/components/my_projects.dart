import 'package:flutter/material.dart';
import '../../../models/project.dart';
import '../../../responsive.dart';

import '../../../constants.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personal Projects",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.3,
          ),
          mobileLarge: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 2.2,
          ),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.8,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demoProjects[index],
      ),
    );
  }
}
