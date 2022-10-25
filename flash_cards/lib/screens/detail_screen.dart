import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/user_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.e}) : super(key: key);
  final UserModel e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Center(
                  // child: CircleAvatar(
                  //   maxRadius: 60,
                  //   backgroundImage: NetworkImage(e.avatar),
                  // ),
                  ),
              // Text(
              //   e.firstname + "" + e.lastname,
              // ),
              // Text(e.email),
            ]),
          ),
        ));
  }
}
