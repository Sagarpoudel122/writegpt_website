import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class SelectYourContentWidget extends StatelessWidget {
  const SelectYourContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 500,
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.onboardingBorderColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextWidget(
            "John was a talented AI developer who had a big ambition to create something that could change the world. He wanted to build a machine that could think and either solve complex problems or make decisions based on vast amounts of data. The technology he needed didn't exist yet, but he was a determined developer and he set out to develop what he needed from scratch.",
            style: CustomTextStyles.text18_500,
            fontFamily: fontLato,
          ),
          TextWidget(
            'John worked tirelessly and eventually, after months of hard work, he had created the perfect AI. He showed it off to his friends who were amazed and impressed by what he had achieved.',
            style: CustomTextStyles.text18_500,
            fontFamily: fontLato,
          )
        ],
      ),
    );
  }
}
