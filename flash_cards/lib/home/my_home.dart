import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../dataProvider/data_provider.dart';
import '../models/user_model.dart';
import '../screens/detail_screen.dart';

class MyHome extends ConsumerWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(userDataProvider);
    return Scaffold(
        appBar: AppBar(title: const Text("RiverPood")),
        body: _data.when(
            data: (_data) {
              List<UserModel> userList = _data.map((e) => e).toList();
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: userList.length,
                          itemBuilder: (_, index) {
                            return InkWell(
                              // onTap: () => Navigator.of(context).push(
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             DetailScreen(e: userList[index]))),
                              child: Card(
                                color: Colors.blue,
                                elevation: 4,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: ListTile(
                                  title: Text(
                                    userList[index].name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }))
                ]),
              );
            },
            error: (err, s) => Text(err.toString()),
            loading: () => Center(child: CircularProgressIndicator())));
  }
}
