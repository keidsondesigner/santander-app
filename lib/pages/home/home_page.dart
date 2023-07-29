import 'package:flutter/material.dart';
import 'package:santander_app/assets/services/user_list.dart';
import 'package:santander_app/shared/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    fetch();
  }

  fetch() async {
    var user = await UserListApi.fetchUser(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.red,
      ),
    );
  }
}