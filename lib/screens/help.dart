import 'package:flutter/material.dart';
import 'package:french_polynesia/styles/typography.dart';
import 'package:french_polynesia/widgets/food_tile.dart';
import 'package:scrollable/exports.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
      backgroundColor: Colors.redAccent, //Background color
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 71, 157), // Accent color
        title: Text(
          "Landmarks",
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
                popUpBody:
                    "« Firi Firi » est mangé généralement avec le café ou le chocolat chaud pour le petit déjeuner. C’est de Tahiti et a une odeur et goût de la noix de coco.",
                popUpTitle: "Firi Firi",
                tileBody: "Coconut-based donuts",
                tileTitle: "Firi Firi",
              ),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody:
                      "« Poisson Cru » est le plat national de la Polynésie française. C’est le poisson cru trempe dans le jus de citron vert et le lait de coco. C’est très bon.",
                  popUpTitle: "Poisson Cru",
                  tileBody: "Raw tuna",
                  tileTitle: "Poisson Cru"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody:
                      "« Pahua Taioro » est un plat est fondé sur les escargots ou les palourdes. Ils trempent dans l’eau douce et puis ils mélangent avec les amandes, la noix de coco, l’eau de mer et les crevettes.",
                  popUpTitle: "Pahua Taioro",
                  tileBody: "Snails or clams",
                  tileTitle: "Pahua Taioro"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody:
                      "« Poulet Fafa » est le poulet avec les pommes de terre et les feuilles de tara. Les feuilles cuisinent dans l’eau de mer enlever l’oxalate de calcium.",
                  popUpTitle: "Poulet Fafa",
                  tileBody: "Chicken with taro leaves",
                  tileTitle: "Poulet Fafa"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody:
                      "« Chevreffes » sont les crevettes qui font la cuisine avec le lait de coco et la vanille. Ils sont une très populaire entrée en Polynésie française.",
                  popUpTitle: "Chevreffes",
                  tileBody: "Freshwater shrimp",
                  tileTitle: "Chevreffes"),
              FoodTile(
                  imagePath: "imgpath",
                  popUpBody:
                      "« Kato » est la biscuite qui prépare avec le lait de coco. C’est mangé souvent avec le café et sont très délicieux.",
                  popUpTitle: "Kato",
                  tileBody: "Coconut milk cookies",
                  tileTitle: "Kato"),
            ],
          ),
        ),
      ),
    );
  }
}
