import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/app_settings.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return         Container(
          height: AppSettings.screenHeight / 5,
          width: AppSettings.screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: AppColors.red,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Olá nome", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white ),
              ),
              Text(
                "Ag 00000 Cc 999999-9", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white ),
              )
            ]
          ),
        );
  }
}