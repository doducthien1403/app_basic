import 'package:flutter/material.dart';
import 'package:login/models/user.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "User detail",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Card(
        elevation: 2,
        child: Column(
          children: [
            Text(user.username),
            Text(user.password),
          ],
        ),
      ),
    );
  }
}
