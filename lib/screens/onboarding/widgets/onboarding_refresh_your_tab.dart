import 'package:flutter/material.dart';
import 'package:writegpt_website/screens/onboarding/widgets/onboarding_key_container.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class OnboardingRefreshYourTabWidget extends StatelessWidget {
  const OnboardingRefreshYourTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget icon = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Icon(
        Icons.add,
        color: AppColors.textPrimaryColor,
      ),
    );
    return Container(
      // color: Colors.red,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const OnBoardingkeyContainer(
                text: '⌘',
                customTextStyles: CustomTextStyles.text22_700,
              ),
              icon,
              const OnBoardingkeyContainer(
                text: 'Shift         ',
              ),
              icon,
              const OnBoardingkeyContainer(
                text: 'R',
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          TextWidget(
            "Ctrl + R in Windows\nCommand E on MacOs",
            style: CustomTextStyles.text24_400,
          ),
        ],
      ),
    );
  }
}
