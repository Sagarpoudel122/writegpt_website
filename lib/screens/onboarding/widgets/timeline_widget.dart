import 'package:flutter/material.dart';
import 'package:writegpt_website/screens/onboarding/widgets/dotted_line.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class TimelineWidget extends StatelessWidget {
  final String text;
  final int index;
  const TimelineWidget({super.key, required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Color> timelineColor = [
      AppColors.timelineColor1,
      AppColors.timelineColor2,
      AppColors.timelineColor3,
      AppColors.timelineColor1,
      AppColors.timelineColor5,
    ];
    return Container(
      height: 530,
      alignment: Alignment.center,
      // margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 56,
                width: 56,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: timelineColor[index],
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: TextWidget(
                  "${index + 1}",
                  style: CustomTextStyles.text36_700,
                  textColor: AppColors.textPrimaryColor,
                ),
              ),
              TextWidget(
                text,
                textColor: AppColors.textPrimaryColor,
                style: CustomTextStyles.text24_500,
              ),
            ],
          ),
          if (index < timelineColor.length - 1)
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 27.0, top: 30.0, bottom: 50),
                child: AppDottedLine(),
              ),
            ),
        ],
      ),
    );
  }
}
