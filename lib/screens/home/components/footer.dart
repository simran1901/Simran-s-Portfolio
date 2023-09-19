import 'package:flutter/material.dart';

import '../../../constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding, right: defaultPadding),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Developed by Simran Makhijani", style: Theme.of(context).textTheme.bodyText1,),
            Text("Active since 2021"),
          ],
        ),
      ),
    );
  }
}
