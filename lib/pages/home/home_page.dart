import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:santander_app/services/user_list.dart';
import 'package:santander_app/models/user_list_model/user_list_model.dart';
import 'package:santander_app/shared/app_colors.dart';
import 'package:santander_app/shared/app_images.dart';

import '../../shared/app_settings.dart';
import '../../widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserListModel? user;

  @override
  void initState() {
    super.initState();
    fetch();
  }

  fetch() async {
    user = await UserListApi.fetchUser(1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    AppSettings.screenWidth = MediaQuery.of(context).size.width;
    AppSettings.screenHeight = MediaQuery.of(context).size.height;
    return user == null ?  const Scaffold(body: Center(child: CircularProgressIndicator( color: Colors.red,)),) : Scaffold(
      drawer: const Drawer(), //button hamburger top bar
      appBar: AppBar(
        backgroundColor: AppColors.red,
        foregroundColor: Colors.white, //color white button hamburger top bar
        title: Center(child: SvgPicture.asset(AppImages.logoSantander, height: 24, width: 24)),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16), 
            child: SvgPicture.asset(AppImages.notification, height: 24)
          )
        ],
      ),
      body: Column(children: [
          HeaderWidget(user: user!,)
        ],
      ),
    );
  }
}