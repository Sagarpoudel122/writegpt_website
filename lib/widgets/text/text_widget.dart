import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';

const fontInter = 'Inter';
const fontLato = 'Lato';

class TextWidget extends StatelessWidget {
  TextWidget(
    this.text, {
    this.style,
    this.fontSize,
    this.fontStyle = FontStyle.normal,
    this.fontFamily = fontLato,
    this.fontWeight = FontWeight.normal,
    this.textColor,
    this.letterSpacing = 0.0,
    this.textAlign = TextAlign.start,
    this.textDecoration = TextDecoration.none,
    this.lineHeight,
    this.decorationColor,
    this.maxLines,
    this.textOverflow,
    this.decorationThickness,
  }) {
    getStyle();
  }

  final String text;
  final CustomTextStyles? style;
  double? fontSize;
  FontWeight fontWeight;
  Color? textColor;
  String fontFamily;
  FontStyle fontStyle;
  double letterSpacing;
  TextAlign textAlign;
  TextDecoration textDecoration;
  double? lineHeight;
  final Color? decorationColor;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final double? decorationThickness;

  getStyle() {
    switch (style) {
      case CustomTextStyles.text10_400_secondary:
        fontSize = 10;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textSecondaryColor;
        break;

      case CustomTextStyles.text10_500_white:
        fontSize = 10;
        fontWeight = FontWeight.w500;
        textColor ??= Colors.white;
        break;

      case CustomTextStyles.text10_700_secondary:
        fontSize = 10;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textSecondaryColor;
        break;
      case CustomTextStyles.text11_400:
        fontSize = 11;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor;
        break;
      case CustomTextStyles.text11_700:
        fontSize = 11;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text12_400:
        fontSize = 12.5;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text12_400_formLabel:
        fontSize = 12;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      // case CustomTextStyles.text12_400_hyperlinkNoUnderline:
      //   fontSize = 12.3;
      //   textColor ??= AppColors.primaryMaterialColor;
      //   fontWeight = FontWeight.w400;
      //   textDecoration = TextDecoration.none;
      //   break;

      case CustomTextStyles.text12_500:
        fontSize = 12;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;
      case CustomTextStyles.text12_500_secondary:
        fontSize = 12;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text12_600:
        fontSize = 12;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text12_700:
        fontSize = 12;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text12_700_secondary:
        fontSize = 12;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text13_400:
        fontSize = 13.3;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text13_500:
        fontSize = 13.3; //it is 12px
        fontWeight = FontWeight.w500;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text13_600:
        fontSize = 13.3;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text13_700:
        fontSize = 13.3;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text13_700_secondary:
        fontSize = 13.3;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text14_400:
        fontSize = 14;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text14_400_secondary:
        fontSize = 14;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text14_500:
        fontSize = 14;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text14_600:
        fontSize = 14;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text14_700:
        fontSize = 14;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;
      case CustomTextStyles.text14_700_secondary:
        fontSize = 14;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text14_500_secondary:
        fontSize = 14;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text15_400:
        fontSize = 15;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text15_600:
        fontSize = 15;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text16_400:
        fontSize = 16;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text16_400_secondary:
        fontSize = 16;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text16_500:
        fontSize = 16.0;
        fontWeight = FontWeight.w500;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text16_600:
        fontSize = 16.0;
        fontWeight = FontWeight.w600;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text16_700:
        fontSize = 16.0;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text16_800:
        fontSize = 16.0;
        fontWeight = FontWeight.w800;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text17_400:
        fontSize = 17.0;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text17_700:
        fontSize = 17.0;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text18_400:
        fontSize = 18.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text18_500:
        fontSize = 18.0;
        fontWeight = FontWeight.w500;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text18_600:
        fontSize = 18.0;
        fontWeight = FontWeight.w600;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text18_700:
        fontSize = 18.0;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text20_400:
        fontSize = 20.0;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text20_500:
        fontSize = 20.0;
        fontWeight = FontWeight.w500;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text20_600:
        fontSize = 20.0;
        fontWeight = FontWeight.w600;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text20_700:
        fontSize = 20.0;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text22_300:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text22_400:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;
      case CustomTextStyles.text22_500:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text22_700:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text22_700_nunitoSans:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        fontFamily = 'NunitoSans';
        break;

      case CustomTextStyles.text22_700_secondary:
        fontSize = 22;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text24_300:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text24_400:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text24_400_italic:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        fontStyle = FontStyle.italic;
        break;

      case CustomTextStyles.text24_500:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;
      case CustomTextStyles.text24_600:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text24_700:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text24_800:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w800;
        break;

      case CustomTextStyles.text18_400:
        fontSize = 18.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text25_500:
        fontSize = 25.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text25_700:
        fontSize = 25.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;
      case CustomTextStyles.text28_400:
        fontSize = 28.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text30_300:
        fontSize = 30;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text30_400_formLabel:
        fontSize = 30;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text30_700:
        fontSize = 30;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text30_700_formLabel:
        fontSize = 30;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        textAlign = TextAlign.center;
        break;

      case CustomTextStyles.text32_700:
        fontSize = 32;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        textAlign = TextAlign.center;
        break;
      case CustomTextStyles.text42_700:
        fontSize = 42;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        // textAlign = TextAlign.center;
        break;

      case CustomTextStyles.text36_700:
        fontSize = 36;
        textColor ??= Colors.white;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text40_500:
        fontSize = 40;
        textColor ??= Colors.white;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text45_300:
        fontSize = 45;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text48_700:
        fontSize = 48;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text48_800:
        fontSize = 48;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w800;
        break;

      case CustomTextStyles.text60_700:
        fontSize = 60;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text64_500:
        fontSize = 60;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.smallGreyDescription_customLineHeight:
        fontSize = 13.3;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textSecondaryColor;
        break;

      case CustomTextStyles.bigLineHeightGreyDescription:
        fontSize = 13.3;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textSecondaryColor;
        break;

      default:
        textColor ??= AppColors.textPrimaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return style == CustomTextStyles.smallGreyDescription_customLineHeight ||
            lineHeight != null
        ? Text(
            text,
            maxLines: maxLines,
            textAlign: textAlign,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: fontFamily,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              color: textColor,
              letterSpacing: letterSpacing,
              height: lineHeight ?? 1.5,
              decoration: textDecoration,
              decorationColor: decorationColor,
              overflow: textOverflow,
              decorationThickness: decorationThickness,
            ),
          )
        : Text(
            text,
            maxLines: maxLines,
            textAlign: textAlign,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: fontFamily,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              color: textColor,
              letterSpacing: letterSpacing,
              decoration: textDecoration,
              decorationColor: decorationColor,
              overflow: textOverflow,
              decorationThickness: decorationThickness,
            ),
          );
  }
}

class TextWidgetRich extends StatelessWidget {
  final TextSpan textSpan;
  final TextStyle? style;
  final CustomTextStyles? customStyle;
  final TextAlign textAlign;
  final int? maxLines;
  late double fontSize;
  late Color? textColor;
  late FontWeight? fontWeight;
  late FontStyle fontStyle;
  final String font;
  final TextDecoration decoration;
  final double letterSpacing;
  final bool isSelectable;

  TextWidgetRich(
    this.textSpan, {
    Key? key,
    this.customStyle,
    this.style,
    // this.fontStyle,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.fontSize = 50.0,
    this.textColor,
    this.fontWeight,
    this.font = 'Inter',
    this.letterSpacing = 1.0,
    this.decoration = TextDecoration.none,
    this.isSelectable = true,
  }) : super(key: key) {
    getStyle();
  }

  getStyle() {
    switch (customStyle) {
      case CustomTextStyles.text10_400_secondary:
        fontSize = 10;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textSecondaryColor;
        break;

      case CustomTextStyles.text10_500_white:
        fontSize = 10;
        fontWeight = FontWeight.w500;
        textColor ??= Colors.white;
        break;

      case CustomTextStyles.text10_700_secondary:
        fontSize = 10;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textSecondaryColor;
        break;
      case CustomTextStyles.text11_400:
        fontSize = 11;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor;
        break;
      case CustomTextStyles.text11_700:
        fontSize = 11;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text12_400:
        fontSize = 12.5;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text12_400_formLabel:
        fontSize = 12;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      // case CustomTextStyles.text12_400_hyperlinkNoUnderline:
      //   fontSize = 12.3;
      //   textColor ??= AppColors.primaryMaterialColor;
      //   fontWeight = FontWeight.w400;
      //   break;

      case CustomTextStyles.text12_500:
        fontSize = 12;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;
      case CustomTextStyles.text12_500_secondary:
        fontSize = 12;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text12_600:
        fontSize = 12;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text12_700:
        fontSize = 12;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text12_700_secondary:
        fontSize = 12;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text13_400:
        fontSize = 13.3;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text13_500:
        fontSize = 13.3; //it is 12px
        fontWeight = FontWeight.w500;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text13_600:
        fontSize = 13.3;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text13_700:
        fontSize = 13.3;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text13_700_secondary:
        fontSize = 13.3;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text14_400:
        fontSize = 14;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text14_400_secondary:
        fontSize = 14;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text14_500:
        fontSize = 14;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text14_600:
        fontSize = 14;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text14_700:
        fontSize = 14;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;
      case CustomTextStyles.text14_700_secondary:
        fontSize = 14;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text14_500_secondary:
        fontSize = 14;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text15_400:
        fontSize = 15;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text15_600:
        fontSize = 15;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w600;
        break;

      case CustomTextStyles.text16_400:
        fontSize = 16;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text16_400_secondary:
        fontSize = 16;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text16_500:
        fontSize = 16.0;
        fontWeight = FontWeight.w500;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text16_600:
        fontSize = 16.0;
        fontWeight = FontWeight.w600;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text16_700:
        fontSize = 16.0;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text16_800:
        fontSize = 16.0;
        fontWeight = FontWeight.w800;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text17_400:
        fontSize = 17.0;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor;
        break;
      case CustomTextStyles.text17_700:
        fontSize = 17.0;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text18_400:
        fontSize = 18.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text18_500:
        fontSize = 18.0;
        fontWeight = FontWeight.w500;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text18_600:
        fontSize = 18.0;
        fontWeight = FontWeight.w600;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text18_700:
        fontSize = 18.0;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text20_400:
        fontSize = 20.0;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text20_500:
        fontSize = 20.0;
        fontWeight = FontWeight.w500;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text20_600:
        fontSize = 20.0;
        fontWeight = FontWeight.w600;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text20_700:
        fontSize = 20.0;
        fontWeight = FontWeight.w700;
        textColor ??= AppColors.textPrimaryColor;
        break;

      case CustomTextStyles.text22_300:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text22_400:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text22_700:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text22_700_nunitoSans:
        fontSize = 22;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text22_700_secondary:
        fontSize = 22;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text24_300:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text24_400:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text24_400_italic:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
        fontStyle = FontStyle.italic;
        break;

      case CustomTextStyles.text24_600:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text24_700:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text24_800:
        fontSize = 24.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w800;
        break;

      case CustomTextStyles.text25_500:
        fontSize = 25.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text25_700:
        fontSize = 25.0;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text30_300:
        fontSize = 30;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text30_400_formLabel:
        fontSize = 30;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text30_700:
        fontSize = 30;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text30_700_formLabel:
        fontSize = 30;
        textColor ??= AppColors.textSecondaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text32_700:
        fontSize = 32;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text36_700:
        fontSize = 36;
        textColor ??= Colors.white;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text45_300:
        fontSize = 45;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text48_700:
        fontSize = 48;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.text48_800:
        fontSize = 48;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w800;
        break;

      case CustomTextStyles.text60_700:
        fontSize = 60;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w700;
        break;

      case CustomTextStyles.smallGreyDescription_customLineHeight:
        fontSize = 13.3;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textSecondaryColor;
        break;

      case CustomTextStyles.bigLineHeightGreyDescription:
        fontSize = 13.3;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textSecondaryColor;
        break;

      default:
        fontSize = 13.3;
        textColor ??= AppColors.textPrimaryColor;
        fontWeight = FontWeight.w400;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isSelectable) {
      return SelectableText.rich(textSpan,
          textAlign: textAlign,
          maxLines: maxLines,
          style: style ??
              TextStyle(
                fontSize: fontSize,
                fontFamily: font,
                fontWeight: fontWeight,
                color: textColor,
                decoration: decoration,
                letterSpacing: letterSpacing,
              ));
    } else {
      return Text.rich(textSpan,
          textAlign: textAlign,
          maxLines: maxLines,
          style: style ??
              TextStyle(
                fontSize: fontSize,
                fontFamily: font,
                fontWeight: fontWeight,
                color: textColor,
                decoration: decoration,
                letterSpacing: letterSpacing,
              ));
    }
  }
}
