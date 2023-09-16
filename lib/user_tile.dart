import 'package:dio_json/users.dart';
import 'package:flutter/material.dart';

class UserDisplayWidget extends StatelessWidget {
  final UserData userData;

  const UserDisplayWidget({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(userData.avatar),
            radius: 50,
          ),
          const SizedBox(height: 20),
          Text('ID: ${userData.id}'),
          Text('Email: ${userData.email}'),
          Text('First Name: ${userData.firstName}'),
          Text('Last Name: ${userData.lastName}'),
        ],
      ),
    );
  }
}
