import 'package:flutter/material.dart';
import 'package:french_polynesia/styles/typography.dart';
import 'package:french_polynesia/widgets/food_tile.dart';
import 'package:scrollable/exports.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  late ScrollController controller;

  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 71, 157), // Change this color
        title: Text(
          "Food",
          style: kBody.copyWith(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: ScrollableView(
          inlineTopOrLeftPadding: 15,
          controller: controller,
          child: Column(
            children: const [
              FoodTile(
                imagePath: "imgpath",
                popUpBody: "body of pop up",
                popUpTitle: "title of pop up",
                tileBody: "tile body text",
                tileTitle: "Firi Firi",
              ),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Rēti'a"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Rēti'a"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Rēti'a"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Poisson Cru"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Rēti'a"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Pahua Taioro"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Poulet Fafa"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Tama'ara'a"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Fafaru"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Po'e"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Ma'a Tahiti"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Chevreffes"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody: "body of pop up",
                  popUpTitle: "title of pop up",
                  tileBody: "tile body text",
                  tileTitle: "Kato"),
            ],
          ),
        ),
      ),
    );
  }
}
