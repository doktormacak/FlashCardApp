import 'package:flutter/material.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/gradientBG.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: Text('Predmeti',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Container(
              
            ),
          ),
        ]),
      ]),
    );
  }
}
