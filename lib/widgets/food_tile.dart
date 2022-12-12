import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:french_polynesia/sheets/bottom_sheet.dart';
import 'package:french_polynesia/styles/typography.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({
    super.key,
    required this.imagePath,
    required this.popUpBody,
    required this.popUpTitle,
    required this.tileBody,
    required this.tileTitle,
  });

  final String imagePath;
  final String tileTitle;
  final String tileBody;
  final String popUpTitle;
  final String popUpBody;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        showInfoSheet(context, popUpTitle, popUpBody);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)), //Je suis tres intelligente
          color: Colors.white, //C'est bon parce que je le fais!! :)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tileTitle,
                  style: kBody.copyWith(color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                Text(
                  tileBody,
                  style: kBody.copyWith(color: Colors.black, fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: Image.asset(
                imagePath,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
