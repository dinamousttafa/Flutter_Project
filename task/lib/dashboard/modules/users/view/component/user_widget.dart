import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/dashboard/modules/users/model/user_model.dart';

class UserItemWidget extends StatelessWidget {
  const UserItemWidget({super.key, required this.userModel});
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: Colors.green,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userModel.name ?? 'xxx',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                userModel.address ?? 'xxx',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ));
  }
}
