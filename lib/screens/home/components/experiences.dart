import 'package:flutter/material.dart';
import 'package:simran_portfolio/models/experience.dart';
import 'package:simran_portfolio/screens/home/components/experience_card.dart';

import '../../../constants.dart';

class Experiences extends StatelessWidget {
  const Experiences({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experiences",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: demoExperiences.length,
            itemBuilder: (context, index) => ExperienceCard(
              experience: demoExperiences[index],
            ),
          )
        ],
      ),
    );
  }
}
