import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/padding/padding_symmetric.dart';
import 'package:commerce/const/strings/home_strings.dart';
import 'package:flutter/material.dart';

class HomeHeaderCard extends StatelessWidget {
  const HomeHeaderCard({
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
          children: const [
            SizedBox(
              height: 25,
            ),
            Text(ProjectHomeStrings.cardTitle, style: TextStyle(color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text(
              ProjectHomeStrings.cashBack,
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
