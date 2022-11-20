import 'package:flutter/material.dart';
import 'package:french_polynesia/styles/typography.dart';

void showInfoSheet(BuildContext context, String title, String body) {
  showBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
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
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 15),
          Text(
            body,
            style: kBody.copyWith(color: Colors.black, fontSize: 15),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          ),
          const Spacer(),
        ],
      ),
    ),
  );
}
