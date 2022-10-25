import 'package:flash_cards/models/user_model.dart';
import 'package:flash_cards/services/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
