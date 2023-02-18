import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:dotted_line/dotted_line.dart';

class AppDottedLine extends StatelessWidget {
  Axis lineaxis;
  AppDottedLine({
    Key? key,
    this.lineaxis = Axis.vertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: lineaxis,
      lineLength: double.infinity,
      lineThickness: 2.0,
      dashLength: 4.0,
      dashColor: AppColors.textPrimaryColor,
      dashRadius: 0.0,
      dashGapLength: 4.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );
  }
}
