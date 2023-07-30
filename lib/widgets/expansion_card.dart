// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../models/user_list_model/card.dart';
import '../shared/app_colors.dart';
import '../shared/app_images.dart';
import '../shared/app_settings.dart';

class ExpansionCardWidget extends StatelessWidget {
  final CreditCard card;
  const ExpansionCardWidget({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
        width: AppSettings.screenWidth - 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: ExpansionTile(
              backgroundColor: AppColors.red,
              collapsedBackgroundColor: AppColors.red,
              collapsedIconColor: AppColors.red,
              shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              title: Text(
                "Cartão ${card.number!}",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              trailing: SvgPicture.asset(
                AppImages.down,
                semanticsLabel: '',
                height: 14,
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Limite atual R\$ ${NumberFormat('#,##0.00', 'pt_BR').format(card.limit!)}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
              onExpansionChanged: (bool expanded) {},
            ))
          ],
        ));
  }
}
