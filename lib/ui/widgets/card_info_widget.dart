
import 'package:flutter/material.dart';
import 'package:ftfl_technology_task/extension/extensions.dart';
import 'package:ftfl_technology_task/ui/screens/card_wallet_screen.dart';
import 'package:ftfl_technology_task/ui/widgets/app_text.dart';
import 'package:ftfl_technology_task/utils/constants.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
    required this.ruppeeSign,
  });

  final String ruppeeSign;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      label: "Activate your LifelineCard",
                      fontWeight: FontWeight.w600,
                    ).addSpaceBelow(2),
                    AppText(
                      label: "$ruppeeSign 3499/- Life Time",
                      fontWeight: FontWeight.w600,
                      color: AppColors.violetColor2,
                    ).addSpaceBelow(2),
                    AppText(
                      label: "$ruppeeSign 9999/year",
                      fontWeight: FontWeight.w600,
                      color: AppColors.redColor,
                    ).addSpaceBelow(2),
                    AppText(label: "Offer Ends Soon!"),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(AppColors.violetColor),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: AppText(
                        label: "Activate Now",
                        color: Colors.white,
                      ),
                    ).addSpaceBelow(10),
                  ],
                ),
                Spacer(),
              Image.asset("assets/person.jpeg")
              ],
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10,),
                AppText(
                  label: "Our Features",
                  fontWeight: FontWeight.bold,
                ).addSpaceBelow(10),
                Row(
                  children: [
                    Expanded(
                      child: FeatureType(
                        ruppeeSign: ruppeeSign,
                        typeName: "Udhar Limit",
                        money: "74425",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: FeatureType(
                        ruppeeSign: ruppeeSign,
                        typeName: "CP EMI LIMIT",
                        money: "74425",
                      ),
                    ),
                  ],
                ).addSpaceBelow(10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: FeatureOptions(
                        icon: Icons.handshake,
                        iconName: "Udhar",
                      ),
                    ),
                    SizedBox(width: 15),
                    Flexible(
                      child: FeatureOptions(
                        icon: Icons.money_sharp,
                        iconName: "CP EMI",
                      ),
                    ),
                    SizedBox(width: 15),
                    Flexible(
                      child: FeatureOptions(
                        icon: Icons.archive_outlined,
                        iconName: "Business Funds",
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
