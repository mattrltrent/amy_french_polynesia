import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:french_polynesia/screens/food.dart';
import 'package:french_polynesia/screens/help.dart';
import 'package:french_polynesia/screens/home.dart';
import 'package:french_polynesia/styles/typography.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TabBarView(
          controller: tabController,
          physics: const BouncingScrollPhysics(),
          children: const [
            FoodScreen(),
            HomeScreen(),
            HelpScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 20,
            ),
          ],
        ),
        child: TabBar(
          onTap: (_) => HapticFeedback.lightImpact(),
          labelStyle: kBody,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.lightBlueAccent,
          indicatorSize: TabBarIndicatorSize.label,
          enableFeedback: true,
          controller: tabController,
          tabs: const [
            Tab(icon: Icon(CupertinoIcons.shopping_cart)),
            Tab(icon: Icon(CupertinoIcons.home)),
            Tab(icon: Icon(CupertinoIcons.location_solid)),
          ],
        ),
      ),
    );
  }
}
