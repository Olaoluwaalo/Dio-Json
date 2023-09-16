import 'dart:developer';

import 'package:dio_json/http_service.dart';
import 'package:dio_json/user_tile.dart';
import 'package:dio_json/users.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HttpService _httpService = HttpService();
  UserData? _user;
  @override
  void initState() {
    _loadData();
    super.initState();
  }

  void _loadData() async {
    try {
      final user = await _httpService.fetchUserData();
      setState(() {
        _user = user;
      });
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'Single User',
          ),
        ),
        body: Column(
          children: [UserDisplayWidget(userData: _user!)],
        ));
  }
}
