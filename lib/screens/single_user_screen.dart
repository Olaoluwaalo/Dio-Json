import 'package:dio/dio.dart';
import 'package:dio_json/http.dart';
import 'package:dio_json/models/User.dart';
import 'package:dio_json/models/single_user_model.dart';
import 'package:flutter/material.dart';
import 'dart:developer' show log;

class SingleUserScreen extends StatefulWidget {
  const SingleUserScreen({super.key});

  @override
  State<SingleUserScreen> createState() => _SingleUserScreenState();
}

class _SingleUserScreenState extends State<SingleUserScreen> {
  late final HttpService httpService;
  late final SingleUserModel singleUserModel;
  late final User user;
  bool isLoading = false;

  @override
  void initState() {
    httpService = HttpService();
    singleUserModel = SingleUserModel(user);
    getUser();
    super.initState();
  }

  @override
  void dispose() {
    httpService;
    getUser();
    user;
    singleUserModel;
    super.dispose();
  }

  Future getUser() async {
    Response response;
    try {
      isLoading = true;
      response = await httpService.getRequest("/api/users/2");
      isLoading = false;
      if (response.statusCode == 200) {
        setState(() {
          singleUserModel = SingleUserModel.fromJson(response.data);
          user = singleUserModel.user;
        });
      } else {
        log('Error');
      }
    } on Exception catch (e) {
      isLoading = false;
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('single user'),
      ),
      body: isLoading
          ? const CircularProgressIndicator()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(user.avatar),
                Text(user.email),
                Text(user.lastName),
                Text(user.firstName),
              ],
            ),
    );
  }
}
