import 'dart:convert';

import 'package:flash_cards/models/subject.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

class ApiServices {
  String endpoint =
      'https://afa4-78-155-41-213.ngrok.io/api/subjects/?format=json';
  Future<List<Subject>> getSubjects() async {
    Response response = await get(Uri.parse(endpoint));
    final List result = jsonDecode(response.body);
    return result.map(((e) => Subject.fromJson(e))).toList();
  }
}

final subjectProvider = Provider<ApiServices>((ref) => ApiServices());

final subjectsDataProvider = FutureProvider<List<Subject>>((ref) async {
  return ref.watch(subjectProvider).getSubjects();
});
