import 'package:flutter/material.dart';
import 'package:ftfl_technology_task/extension/extensions.dart';
import 'package:ftfl_technology_task/ui/widgets/app_text.dart';
import 'package:ftfl_technology_task/ui/widgets/card_info_widget.dart';
import 'package:ftfl_technology_task/ui/widgets/card_widget.dart';
import 'package:ftfl_technology_task/ui/widgets/wallet_row_item.dart';
import 'package:ftfl_technology_task/utils/constants.dart';

class CardWalletScreen extends StatelessWidget {
  const CardWalletScreen({super.key});

  final ruppeeSign = Constants.ruppeeSign;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(Icons.arrow_back_ios),
        ),
        leadingWidth: 35,
        title: AppText(
          label: "Card & Wallets",
          fontWeight: FontWeight.bold,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardWidget(),
                CardInfoWidget(ruppeeSign: ruppeeSign),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    bottom: 10,
                  ),
                  child: AppText(
                    label: "Wallet",
                    fontSize: 18,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) {
              return WalletRowItem(
                walletType: WalletType.values[index],
              );
            },
            itemCount: 3,
          )
        ],
      ),
    );
  }
}



class FeatureType extends StatelessWidget {
  const FeatureType({
    super.key,
    required this.ruppeeSign,
    required this.typeName,
    required this.money,
  });

  final String typeName;
  final String money;
  final String ruppeeSign;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(5)),
      child: AppText(
        label: "$typeName: $ruppeeSign $money",
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }
}

class FeatureOptions extends StatelessWidget {
  const FeatureOptions({
    super.key,
    required this.icon,
    required this.iconName,
  });

  final IconData icon;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.featureBgColor,
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon),
        ).addSpaceBelow(2),
        AppText(
          label: iconName,
          fontSize: 14,
        )
      ],
    );
  }
}
