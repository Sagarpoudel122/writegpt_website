import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class OnboardingContainerWrapper extends StatelessWidget {
  final String title;
  final Widget widget;
  const OnboardingContainerWrapper({
    super.key,
    required this.title,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.onboardingBorderColor.withOpacity(0.25),
          width: 4.0,
        ),
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: TextWidget(
                title,
                style: CustomTextStyles.text24_500,
                textAlign: TextAlign.center,
                fontFamily: fontHelveticaNeue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: widget,
            )
          ],
        ),
      ),
    );
  }
}
