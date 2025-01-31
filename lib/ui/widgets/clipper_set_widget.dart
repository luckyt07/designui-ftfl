import 'package:flutter/material.dart';
import 'package:ftfl_technology_task/ui/widgets/app_text.dart';
import 'package:ftfl_technology_task/utils/constants.dart';

class ClipperSetWidget extends StatelessWidget {

  const ClipperSetWidget({
    super.key,
    required this.clippedWidth,
    required this.clippedHeight, required this.text,
  });

  final double clippedWidth;
  final double clippedHeight;final String text;

  @override
  Widget build(BuildContext context) {
    // return SizedBox.shrink();
    return Container(
      width: clippedWidth - 5,
      height: clippedHeight - 5,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.buttonColor,
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(8)),
      child: AppText(
        label: text,
        fontWeight: FontWeight.w600,
        color: Colors.blueAccent,
      ),
    );
  }
}
