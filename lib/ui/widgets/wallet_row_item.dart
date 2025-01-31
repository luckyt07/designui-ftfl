import 'package:flutter/material.dart';
import 'package:ftfl_technology_task/ui/widgets/app_text.dart';
import 'package:ftfl_technology_task/ui/widgets/clipper_set_widget.dart';
import 'package:ftfl_technology_task/utils/constants.dart';

import 'clip_container.dart';

enum WalletType {
  simple,
  lifeLineCoin,
  addCredit,
}

class WalletRowItem extends StatelessWidget {
  const WalletRowItem({
    super.key,
    required this.walletType,
  });

  final WalletType walletType;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double clippedWidth = 150;
    final double radius  = 10;
    ;
    final width = size.width - (clippedWidth + 60);
    final double clippedHeight = 40;
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      margin: EdgeInsets.only(bottom: 15),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipPath(
            clipper: ClipContainer(
              cutHeight: clippedHeight,
              cutWidth: clippedWidth,
              radius: radius
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(label: "Lifeline Card Wallet"),
                            subTitleStart,
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          AppText(label: "4356"),
                          subTitleEnd,
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        bottomWidget(width),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ClipperSetWidget(
              clippedWidth: clippedWidth,
              clippedHeight: clippedHeight,
              text: "More"),
        ],
      ),
    );
  }

  Widget get subTitleStart {
    switch (walletType) {
      case WalletType.simple:
        return AppText(
          label: "Upcoming EMI/Udhar",
          color: Colors.grey,
          fontSize: 12,
        );

      case WalletType.lifeLineCoin:
        return AppText(
          label: "Lifeline Magic Coin",
          color: AppColors.violetColor,
          fontSize: 12,
        );
      case WalletType.addCredit:
        return AppText(
          label: "Add Credit Coin",
          color: AppColors.redColor,
          fontSize: 12,
        );
    }
  }

  Widget get subTitleEnd {
    switch (walletType) {
      case WalletType.simple:
        return AppText(
          label: "4356",
          color: Colors.grey,
          fontSize: 12,
        );

      case WalletType.lifeLineCoin:
        return AppText(
          label: "600",
          color: AppColors.violetColor,
          fontSize: 12,
        );
      case WalletType.addCredit:
        return SizedBox.shrink();
    }
  }

  Widget bottomWidget(double width) {
    switch (walletType) {
      case WalletType.simple:
        return SizedBox(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppText(
                label: "Withdraw",
                color: AppColors.violetColor,
                fontSize: 14,
              ),
              Spacer(),
              AppText(
                label: "Transfer",
                color: AppColors.violetColor,
                fontSize: 14,
              ),
              Spacer(),
            ],
          ),
        );
      case WalletType.lifeLineCoin:
      case WalletType.addCredit:
        return AppText(
          label: "11th Sep 2023 To 11 Oct 2023",
          fontSize: 12,
          color: Colors.grey,
        );
    }
  }
}
