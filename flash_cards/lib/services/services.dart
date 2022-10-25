import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import '../models/user_model.dart';

class ApiServices {
  String endpoint =
      'https://3500-46-161-94-121.ngrok.io/api/subjects/?format=json';
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));
    final List result = jsonDecode(response.body);
    return result.map(((e) => UserModel.fromJson(e))).toList();
  }
}

final userProvider = Provider<ApiServices>((ref) => ApiServices());
