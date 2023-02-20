import 'package:flutter/material.dart';
import 'package:writegpt_website/screens/onboarding/widgets/onboarding_key_container.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/utils/app_constant.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class ActivateExtensionWidget extends StatelessWidget {
  const ActivateExtensionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget icon = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Icon(
        Icons.add,
        color: AppColors.textPrimaryColor,
      ),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OnBoardingkeyContainer(
              text: AppConstant.getOS(),
              customTextStyles: CustomTextStyles.text22_700,
            ),
            icon,
            const OnBoardingkeyContainer(
              text: 'E',
            ),
          ],
        ),
        TextWidget(
          "Ctrl + Y in Windows",
          style: CustomTextStyles.text24_400,
        ),
      ],
    );
  }
}
