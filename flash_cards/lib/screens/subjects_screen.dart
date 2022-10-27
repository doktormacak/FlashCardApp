import 'package:flash_cards/models/subject.dart';
import 'package:flash_cards/repository/subjectsRepo.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        Column(
          children: const [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 55.0),
                child: Text('Predmeti',
                    style:
                        TextStyle(fontSize: 48, fontWeight: FontWeight.w700)),
              ),
            ),
            Expanded(child: SubjectsList()),
          ],
        ),
      ]),
    );
  }
}

class SubjectsList extends ConsumerWidget {
  const SubjectsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(subjectsDataProvider);
    return data.when(
      data: (data) {
        List<Subject> subjectList = data.map((e) => e).toList();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(children: [
            Expanded(
                child: ListView.builder(
              itemCount: subjectList.length,
              itemBuilder: (_, index) {
                return Card(
                    color: Colors.green[900],
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                        title: Text(
                      subjectList[index].name,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    )));
              },
            )),
          ]),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (Object error, StackTrace stackTrace) => Text(error.toString()),
    );
  }
}
