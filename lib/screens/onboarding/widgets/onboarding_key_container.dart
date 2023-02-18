import 'package:flutter/material.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class OnBoardingkeyContainer extends StatelessWidget {
  final String text;
  final CustomTextStyles? customTextStyles;
  const OnBoardingkeyContainer({
    super.key,
    required this.text,
    this.customTextStyles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextWidget(
        text,
        style: customTextStyles ?? CustomTextStyles.text22_500,
        textColor: Colors.black,
      ),
    );
  }
}
