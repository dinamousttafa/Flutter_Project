import 'package:task_1/dashboard/modules/users/model/repo/parent_data.dart';
import 'package:task_1/dashboard/modules/users/model/user_model.dart';

class FirebaseRepo extends ParentRepo {
  static FirebaseRepo? instance = FirebaseRepo._init();

  FirebaseRepo._init();

  @override
  Future<void> insert({required String name, String? address}) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<void> delete({required int id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }
}
