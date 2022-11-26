import 'package:flutter/material.dart';

import '../../../../const/border/border_radius.dart';
import '../../../../const/padding/padding_symmetric.dart';
import '../../../../const/strings/home_strings.dart';

class HomeHeaderCard extends StatelessWidget with ProjectHomeStrings {
  HomeHeaderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: ProjectBorder.borderRadius20,
        gradient: LinearGradient(colors: [Colors.blue, Color(0xFF4A3298)]),
      ),
      child: Padding(
        padding: ProjectPaddingSymmetric.paddingHor20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(cardTitle, style: const TextStyle(color: Colors.white)),
            const SizedBox(
              height: 10,
            ),
            Text(
              cashBack,
              style: const TextStyle(color: Colors.white, fontSize: 32),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
