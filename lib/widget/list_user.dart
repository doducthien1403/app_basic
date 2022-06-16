import 'package:flutter/material.dart';
import 'package:login/models/user.dart';
import 'package:login/screen/user_detail.dart';

class ListUser extends StatelessWidget {
  const ListUser({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listUser.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listUser[index].username),
            subtitle: Text(listUser[index].password),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserDetail(user: users[index])));
            },
          );
        },
    );
  }
}
