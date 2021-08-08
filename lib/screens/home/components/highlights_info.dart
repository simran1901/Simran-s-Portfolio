import 'package:flutter/material.dart';
import '../../../components/animated_counter.dart';
import '../../../responsive.dart';

import '../../../constants.dart';
import 'highlight.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Sessions",
                    ),
                    Highlight(
                      counter: AnimatedCounter(
                        value: 5,
                        text: "+",
                      ),
                      label: "LOAs  ",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    Highlight(
                      counter: AnimatedCounter(
                        value: 20,
                        text: "+",
                      ),
                      label: "Competitions  ",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "Sessions",
                ),
                Highlight(
                  counter: AnimatedCounter(
                    value: 5,
                    text: "+",
                  ),
                  label: "LOAs",
                ),
                Highlight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                Highlight(
                  counter: AnimatedCounter(
                    value: 20,
                    text: "+",
                  ),
                  label: "Competitions  ",
                ),
              ],
            ),
    );
  }
}
