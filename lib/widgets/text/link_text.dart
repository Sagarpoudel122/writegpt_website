import 'package:flutter/material.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class LinkText extends StatelessWidget {
  ///Text that is underlined and is clickable.
  const LinkText({
    Key? key,
    required this.text,
    this.textStyle,
    this.onTap,
  }) : super(key: key);

  final String text;
  final CustomTextStyles? textStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: onTap,
      child: TextWidget(
        text,
        style: textStyle ?? CustomTextStyles.text18_600,
        textColor: Colors.white,
        textDecoration: TextDecoration.underline,
        decorationColor: Colors.white,
      ),
    );
  }
}
