import 'package:flutter/material.dart';
import '../../../models/recommendation.dart';

import '../../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          if (recommendation.designation != null)
            Text(recommendation.designation!),
          if (recommendation.source != null) 
            Text(recommendation.source!),
          const SizedBox(height: defaultPadding),
          Text(
            recommendation.text!,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
