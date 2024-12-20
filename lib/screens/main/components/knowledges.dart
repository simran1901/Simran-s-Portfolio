import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        KnowledgeText(text: "Competitive Programming, C++"),
        KnowledgeText(text: "Firebase, AWS, MySQL, Networking"),
        KnowledgeText(text: "Java, Node.js, Flutter, Linux"),
        KnowledgeText(text: "Spring boot, Postman, Hibernate"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Flexible(flex: 2, child: SvgPicture.asset("assets/icons/check.svg")),
          Flexible(flex: 1, child: SizedBox(width: defaultPadding / 2)),
          Flexible(flex: 10, child: Text(text)),
        ],
      ),
    );
  }
}
