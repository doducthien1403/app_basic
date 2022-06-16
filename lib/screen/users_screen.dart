import 'package:flutter/material.dart';
import 'package:login/widget/list_user.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            )),
      ),
      body: const SingleChildScrollView(
        child: ListUser(users: []),
      ),
    );
  }
}
