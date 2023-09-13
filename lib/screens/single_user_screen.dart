import 'package:flutter/material.dart';

class SingleUserScreen extends StatefulWidget {
  const SingleUserScreen({super.key});

  @override
  State<SingleUserScreen> createState() => _SingleUserScreenState();
}

class _SingleUserScreenState extends State<SingleUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('single user'),
      ),
    );
  }
}
