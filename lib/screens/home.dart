import 'package:flutter/material.dart';

import '../styles/typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent, //Background color
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 21, 21), // Accent color
        title: Text(
          "Landmarks",
          style: kBody.copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Image.asset(
                  'assets/images/img-2.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.transparent,
                child: Text(
                  "tileBody",
                  style: kBody.copyWith(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.transparent,
                child: Text(
                  "This is a cool description. Yea",
                  style: kBody.copyWith(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Image.asset(
                  'assets/images/img-1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Image.asset(
                  'assets/images/img-1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.transparent,
                child: Text(
                  "tileBody",
                  style: kBody.copyWith(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          )),
    );
  }
}
