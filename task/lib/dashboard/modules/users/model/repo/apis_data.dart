import 'dart:html';

import 'package:task_1/dashboard/modules/users/model/repo/parent_data.dart';
import 'package:task_1/dashboard/modules/users/model/user_model.dart';

class APISRepo extends ParentRepo {
  @override
  Future<void> delete({required num id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<dynamic> Fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }

  @override
  Future<void> insert({required String name, String? address}) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }
}
