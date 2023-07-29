import 'package:flutter/material.dart';
import 'package:santander_app/models/user_list_model/user_list_model.dart';

import '../shared/app_colors.dart';
import '../shared/app_settings.dart';

class HeaderWidget extends StatelessWidget  {
  final UserListModel user;
  const HeaderWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return         Container(
          height: AppSettings.screenHeight / 5,
          width: AppSettings.screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: AppColors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Olá, Keidson", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white ),
                // "Olá, ${user.name}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white ),
              ),
              Text(
                "Ag ${user.account!.agency}    Cc ${user.account!.number}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white ),
              )
            ]
          ),
        );
  }
}