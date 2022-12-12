import 'package:flutter/material.dart';
import 'package:french_polynesia/styles/typography.dart';

void showInfoSheet(BuildContext context, String title, String body) {
  showBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * .8,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 20,
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Container(
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
            const Spacer(),
            Text(
              title,
              style: kBody.copyWith(color: Colors.black),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 15),
            Text(
              body,
              style: kBody.copyWith(color: Colors.black, fontSize: 25),
              textAlign: TextAlign.left,
            ),
            const Spacer(),
          ],
        ),
      ),
    ),
  );
}
