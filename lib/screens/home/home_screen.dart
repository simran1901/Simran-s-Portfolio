import 'package:flutter/material.dart';
import 'package:simran_portfolio/screens/home/components/experiences.dart';
import '../../screens/main/main_screen.dart';

import 'components/highlights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        Experiences(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
